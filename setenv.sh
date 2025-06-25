echo "***setenv.bat running ..."

export MY_PASSWORD="${MY_PASSWORD:-YOUR_PASSWORD_HERE}"
export JWT_SECRET="${JWT_SECRET:-YOUR_JWT_SECRET_HERE}"
export JWT_ACCESS_SECRET="${JWT_ACCESS_SECRET:-YOUR_JWT_ACCESS_SECRET_HERE}"
export JWT_REFRESH_SECRET="${JWT_REFRESH_SECRET:-YOUR_JWT_REFRESH_SECRET_HERE}"
export JWT_ACCESS_SECRET_KEY="${JWT_ACCESS_SECRET_KEY:-YOUR_JWT_ACCESS_SECRET_KEY_HERE}"
export JWT_REFRESH_SECRET_KEY="${JWT_REFRESH_SECRET_KEY:-YOUR_JWT_REFRESH_SECRET_KEY_HERE}"


#### Add
#export DRIVER_CLASS_NAME="org.postgresql.Driver"
#export HIBERNATE_DDL="create"
#export HIBERNATE_DIALECT="org.hibernate.dialect.PostgreSQL9Dialect"
#export SHOW_SQL="true"

#export PUBLIC_KEY=sandbox_i96549488438
#facebook
export PRIVATE_KEY="${PRIVATE_KEY:-YOUR_PRIVATE_KEY_HERE}"
##set export GOOGLE_MAP_KEY=AIzaSyBdEOt1rGu5B5h5-wpS4WnTA5gD7-O6R30
export GOOGLE_MAP_KEY="AIzaSyArEeghQZQaaV2miDz4V3Lo2wCuCtY9klA"

export BASE_URI="/dev"
export PROD_BASE_URI="/"


#export DEV2_DATASOURCE_URL=jdbc:postgresql://localhost:5432/teachua43
#export DEV2_DATASOURCE_USER=postgres
#export DEV2_DATASOURCE_PASSWORD=root

#export DEV2_DATASOURCE_URL=jdbc:postgresql://185.156.43.101:5432/su_test
#export DEV2_DATASOURCE_USER=su_teachua_dev
#export DEV2_DATASOURCE_PASSWORD=q9M2jok12JPo3k9kvl1

# Database conf (from Terraform)
# To update database config, run: ./scripts/update-database-config.sh
if [ -f "./database-config.env" ]; then
    source "./database-config.env"
    echo "Database config loaded from database-config.env"
else
    # Fallback to manual configuration
    echo "Using fallback database configuration. Run ./scripts/update-database-config.sh to sync with Terraform"
    export DEV2_DATASOURCE_URL="jdbc:postgresql://104.198.44.61:5432/teachua"
    export DEV2_DATASOURCE_USER="teachua_user"
    export DEV2_DATASOURCE_PASSWORD="${DEV2_DATASOURCE_PASSWORD:-YOUR_DB_PASSWORD_HERE}"
    
    export PROD_DATASOURCE_URL="jdbc:postgresql://104.198.44.61:5432/teachua"
    export PROD_DATASOURCE_USER="teachua_user"
    export PROD_DATASOURCE_PASSWORD="${PROD_DATASOURCE_PASSWORD:-YOUR_DB_PASSWORD_HERE}"
fi


#export PROD_DATASOURCE_URL="jdbc:postgresql://speak-ukrainian.org.ua:5432/su_dev_2"
#export PROD_DATASOURCE_USER="su_dev_user_2"
#export PROD_DATASOURCE_PASSWORD="jKsUjkfj822jUo01o31"


#export TEST_DATASOURCE_URL=jdbc:postgresql://localhost:5432/su_dev
#export TEST_DATASOURCE_USER=su_dev_user
#export TEST_DATASOURCE_PASSWORD=jKsUjM7ks82jUoNq231

export PUBLIC_URL="/"
export PROD_PUBLIC_URL="/"
#export PROD_PUBLIC_URL=""
#export ROOT_SERVER="https://speak-ukrainian.com.ua"
export UPLOAD_PATH="target/upload"
#export UPLOAD_PATH=/opt/tomcat/latest/bin/target/upload

export STATIC_FOLDER="frontend"
export BASE_URL="http://localhost:8080/dev"
export PROD_BASE_URL="http://localhost:8080"
#export BASE_URL="https://speak-ukrainian.org.ua/dev"
#export PROD_BASE_URL="https://speak-ukrainian.org.ua"


#ROOT_SERVER=
#export USER_EMAIL=speakukrainiantest@gmail.com
#export USER_PASSWORD=teachua2021
export USER_EMAIL="${USER_EMAIL:-YOUR_EMAIL_HERE}"
export USER_PASSWORD="${USER_PASSWORD:-YOUR_EMAIL_PASSWORD_HERE}"
#export SEND_PASSWORD=nutbfpeopcriemso
export SEND_PASSWORD="${SEND_PASSWORD:-YOUR_SEND_PASSWORD_HERE}"
export URL_LOGS="./target/logs/"
#export URL_LOGS="/opt/tomcat/latest/logs"

#export OAUTH2_GOOGLE_CLIENT_ID=719863407108-293ckbk2ecskrfnqb19ll156ks1rmtgs.apps.googleusercontent.com
#export OAUTH2_GOOGLE_CLIENT_SECRET=snQqRHMBhuTo0CB2cXjQHZaS
export OAUTH2_GOOGLE_CLIENT_ID="${OAUTH2_GOOGLE_CLIENT_ID:-YOUR_GOOGLE_CLIENT_ID_HERE}"
export OAUTH2_GOOGLE_CLIENT_SECRET="${OAUTH2_GOOGLE_CLIENT_SECRET:-YOUR_GOOGLE_CLIENT_SECRET_HERE}"
export OAUTH2_FACEBOOK_CLIENT_ID="${OAUTH2_FACEBOOK_CLIENT_ID:-YOUR_FACEBOOK_CLIENT_ID_HERE}"
export OAUTH2_FACEBOOK_CLIENT_SECRET="${OAUTH2_FACEBOOK_CLIENT_SECRET:-YOUR_FACEBOOK_CLIENT_SECRET_HERE}"


#export DATASOURCE_URL=jdbc:postgresql://localhost:5432/teachua
#export DATASOURCE_URL=jdbc:postgresql://localhost:5432/teachuafirst
## set DATASOURCE_URL=jdbc:postgresql://localhost:5432/teachua33
#?serverTimezone=UTC
## set DATASOURCE_USER=postgres
## set DATASOURCE_PASSWORD=root
export DATASOURCE_URL="jdbc:postgresql://localhost:5432/teachua"
export DATASOURCE_USER="${DATASOURCE_USER:-YOUR_LOCAL_DB_USER}"
export DATASOURCE_PASSWORD="${DATASOURCE_PASSWORD:-YOUR_LOCAL_DB_PASSWORD}"

export SERVICE_ACCOUNT_CLIENT_EMAIL="${SERVICE_ACCOUNT_CLIENT_EMAIL:-YOUR_SERVICE_ACCOUNT_EMAIL}"
export SERVICE_ACCOUNT_PRIVATE_KEY="${SERVICE_ACCOUNT_PRIVATE_KEY:-YOUR_SERVICE_ACCOUNT_PRIVATE_KEY}"

echo "***MY_PASSWORD=$MY_PASSWORD"
echo "***PROD_PUBLIC_URL=$PROD_PUBLIC_URL"
echo "***STATIC_FOLDER=$STATIC_FOLDER"
echo "***DEV2_DATASOURCE_URL=$DEV2_DATASOURCE_URL"
echo "***JAVA_HOME=$JAVA_HOME"
echo "***JAVA_OPTS=$JAVA_OPTS"
echo "***JDK_JAVA_OPTIONS=$JDK_JAVA_OPTIONS"
