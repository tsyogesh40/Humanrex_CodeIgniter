from datetime import date,datetime,timedelta
import hashlib
from pyfingerprint.pyfingerprint import PyFingerprint
import serial,time,datetime
import pymysql

## Search for a finger
##
 ##Time and Date formats

t=datetime.datetime.now()
#date format
weekday=t.strftime("%a") # %A for abbr
day=t.strftime("%d")
month=t.strftime("%b")  #%B for abbr
month_num=t.strftime("%m")
year=t.strftime("%Y")

    #time format
hour_12=t.strftime("%I")
hour_24=t.strftime("%H")
minutes=t.strftime("%H")
seconds=t.strftime("%S")
am_pm=t.strftime("%p")


## Tries to initialize the sensor
try:
    f = PyFingerprint('/dev/ttyUSB0', 57600, 0xFFFFFFFF, 0x00000000)

    if ( f.verifyPassword() == False ):
        raise ValueError('The given fingerprint sensor password is wrong!')

except Exception as e:
    print('The fingerprint sensor could not be initialized in USB 0!')
    f = PyFingerprint('/dev/ttyUSB1', 57600, 0xFFFFFFFF, 0x00000000)

    print('Exception message: ' + str(e))
   # exit(1)

## Gets some sensor information
print('Currently used templates: ' + str(f.getTemplateCount()) +'/'+ str(f.getStorageCapacity()))


def sem_calc(month):
    if(month>=1 & month<6):
        return "ODD"
    else:
        return "EVEN"

def time_12():
    t=datetime.datetime.now()
    time_12=t.strftime("%I:%M:%S %p") #12hrs time AM/PM
    return time_12

def time_24():
    t=datetime.datetime.now()
    time_24=t.strftime("%H:%M:%S") #24 Hrs time
    return time_24

def date():
    t=datetime.datetime.now()
    date=t.strftime("%Y-%m-%d")
    return date

def time_delta_24():
    t=datetime.datetime.now()
    h=t.strftime("%H")
    m=t.strftime("%H")
    s=t.strftime("%S")
    time_delta=timedelta(hours=int(h ),minutes=int(m),seconds=int(s))
    return time_delta


while(1):

## Tries to search the finger and calculate hash
    try:
        print('Waiting for finger...')

        ## Wait that finger is read
        while ( f.readImage() == False ):
            pass

    ## Converts read image to characteristics and stores it in charbuffer 1
        f.convertImage(0x01)

        ## Searchs template
        result = f.searchTemplate()

        positionNumber = result[0]
        accuracyScore = result[1]
        flag=0
        if ( positionNumber == -1 ):
            print('No match found!')
            flag=1
          #  exit(0)
        else:
            print('Found template at position #' + str(positionNumber))
            print('The accuracy score is: ' + str(accuracyScore))

        ## OPTIONAL stuff
        ##

        if (flag!=1):
            flag=0
            #cnx=pymysql.connect(user='u609047224_admin',password='podalusu',host='sql133.main-hosting.eu.',database='u609047224_data')
            #cnx=pymysql.connect(user='yogesh',password='',host='172.16.3.57',database='Humanrexx1')
            cnx=pymysql.connect(user='root',password='root',host='127.0.0.1',database='admin_panel')
            if cnx:
                print ("Localhost Connected")
            cur=cnx.cursor()

            try:
               #fetching details from staff_details
                sql_details="select name,staff_id,department,cadre from staff_details where store_id='%s'"
                result_details=cur.execute(sql_details,(positionNumber))
                details=cur.fetchone()
                nm=details[0]
                staffid=details[1]
                department=details[2]
                cadre=details[3]

                #checking for prior permission
                permission=0
                sql_permission="select in_time,out_time,p_value,physical_presence from permission where staff_id=%s and date=%s"
                res_permission=cur.execute(sql_permission,(staffid,date()))
                permission_granted=cur.rowcount
                if permission_granted!=0:
                    permission=1
                    data=cur.fetchone()

                if permission!=1:
                    physical_presence='Y'
                    #timing for teaching staffs
                    if cadre=='T':
                        sql_altered_time_T="select in_time,out_time from altered_time where date=%s and cadre=%s"
                        res_T= cur.execute(sql_altered_time_T,(date(),cadre))
                        rowcount_T=cur.rowcount
                        if rowcount_T==0:
                            sql_default_time_T="select in_time,out_time from default_time where cadre=%s"
                            res1_T=cur.execute(sql_default_time_T,(cadre))
                            row_T=cur.fetchone()
                            in_time=row_T[0]
                            out_time=row_T[1]

                        else:
                            row_T=cur.fetchone()
                            in_time=row_T[0]
                            out_time=row_T[1]

                    #timing for non teaching staffs
                    if cadre=='NT':
                        sql_altered_time_NT="select in_time,out_time from altered_time where date=%s and cadre=%s"
                        res_NT= cur.execute(sql_altered_time_NT,(date(),cadre))
                        rowcount_NT=cur.rowcount
                        if rowcount_NT==0:
                            sql_default_time_NT="select in_time,out_time from default_time where cadre=%s"
                            res1_NT=cur.execute(sql_default_time_NT,(cadre))
                            row_NT=cur.fetchone()
                            in_time=row_NT[0]
                            out_time=row_NT[1]
                        else:
                            row_NT=cur.fetchone()
                            in_time=row_NT[0]
                            out_time=row_NT[1]
                else:
                   # permission=0
                    in_time=data[0]
                    out_time=data[1]
                    physical_presence=data[3]
                    print('permission granted')

                print('IN_TIME = ',in_time)
                print('OUT_TIME = ',out_time)

                #checking for existing records in temp_entry
                sql="select store_id from temp_entry where store_id='%s' and date=%s"
                result=cur.execute(sql,(positionNumber,date()))
                row=cur.rowcount
                #print(row)

                #checking for latehistory(using counter table)
                sql_counter="select count,late_days from counter where staff_id=%s"
                res_counter=cur.execute(sql_counter,(staffid))
                row_counter=cur.fetchone()
                no_of_row=cur.rowcount
                counter=row_counter[0]
                late_days=row_counter[1]
                print(physical_presence)
                if physical_presence=='Y':
                    #if no entry exists in temp_entry
                    # here count is the P_value in DB, then Counter is the value in counter
                    if row==0:
                        if(time_delta_24()>in_time):    #if late
                            late_days+=1
                            flag=1
                            if(counter>=3):
                                counter=0
                                count=0
                            else:
                                counter=counter+1
                                count=1
                          #updating counter table due to late attendence

                            sql_c="Update counter set count=%s,late_days=%s where staff_id=%s"
                            cur.execute(sql_c,(counter,late_days,staffid))
                            cnx.commit()
                        else:              #for correct time
                            count=1

                        entry=1
                        #print((nm,staffid,positionNumber,department,time_24,time_24,count,date,sem_calc(int(month_num)),year))
                        semester=sem_calc(int(month_num))
                        #evaluation
                        if(flag==1):
                            status="LATE"
                            flag=0
                        else:
                           status="ONTIME"

                        #inserting attendence entry
                        sql1="insert into temp_entry(cadre,name,staff_id,store_id,dept,in_time,p_value,no_of_entry,status,date,semester,year) values(%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)"
                        res=cur.execute(sql1,(cadre,nm,staffid,positionNumber,department,time_24(),count,entry,status,date(),semester,year))
                        if res:
                           print ('Hello! ',nm,'Your Entry ',entry,' is at',time_12(),' on ',date())
                        cnx.commit()

                    else:
                        print("Hello! ",nm)
                        sql2="select p_value,no_of_entry from temp_entry where store_id='%s' and date=%s"
                        res1=cur.execute(sql2,(positionNumber,date()))
                        row1=cur.fetchone()
                        count=row1[0]
                        entry=row1[1]
                        print(entry)
                        if(entry<2):
                            if(out_time<=time_delta_24()):
                                count+=1
                            entry+=1
                          #updating out time
                            sql3="UPDATE temp_entry set no_of_entry=%s,out_time=%s where staff_id=%s and date=%s"
                            res=cur.execute(sql3,(entry,time_24(),staffid,date()))
                            cnx.commit()

                            #updating P_value
                            sql_tym="select in_time,out_time from temp_entry where staff_id=%s and date=%s"
                            res_tym=cur.execute(sql_tym,(staffid,date()))
                            data=cur.fetchone()
                            in_time=data[0]
                            out_time=data[1]
                            diff=out_time-in_time
                            print('Time Difference= ',diff)
                            #p_value is incremented when working hours is more than 7:45 hrs
                            if str(diff)>='3:00:00' and str(diff)< '7:35:00':
                                p_value=count
                            elif str(diff)>='7:35:00':
                                p_value=count+1ts
                            #updating P_value in temp_entry
                            sql_update="UPDATE temp_entry set p_value=%s where staff_id=%s and date=%s"
                            res_update=cur.execute(sql_update,(p_value,staffid,date()))
                            cnx.commit()

                            if(res):
                                print('Your entry ',entry,'is at',time_12(),'\nThankYou!')

                        else:
                            print('Your presence is Already confirmed today -',date(), '!\nHave a nice Day')

                else:
                    print(nm,',Your entry is not allowed Today!');

            except Exception as ex:
                print("Manipulating problem")
                print(ex)
                cnx.rollback()

        ## Loads the found template to charbuffer 1
        f.loadTemplate(positionNumber, 0x01)

        ## Downloads the characteristics of template loaded in charbuffer 1
        characterics = str(f.downloadCharacteristics(0x01)).encode('utf-8')

        ## Hashes characteristics of template
        #print('SHA-2 hash of template: ' + hashlib.sha256(characterics).hexdigest())

    except Exception as e:
        print('Operation failed!')
        print('Exception message: ' + str(e))
        #exit(1)
    time.sleep(2)
