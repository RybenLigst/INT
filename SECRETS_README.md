# Secrets Configuration

## Overview
This repository contains a secure version of the TeachUA application with all sensitive data replaced by environment variables.

## Required Environment Variables

Before running the application, you need to set the following environment variables:

### Basic Application Settings
```bash
export MY_PASSWORD="your_application_password"
export JWT_SECRET="your_jwt_secret"
export JWT_ACCESS_SECRET="your_jwt_access_secret"
export JWT_REFRESH_SECRET="your_jwt_refresh_secret"
export JWT_ACCESS_SECRET_KEY="your_jwt_access_secret_key"
export JWT_REFRESH_SECRET_KEY="your_jwt_refresh_secret_key"
export PRIVATE_KEY="your_private_key"
```

### OAuth2 Configuration
```bash
export OAUTH2_GOOGLE_CLIENT_ID="your_google_client_id"
export OAUTH2_GOOGLE_CLIENT_SECRET="your_google_client_secret"
export OAUTH2_FACEBOOK_CLIENT_ID="your_facebook_client_id"
export OAUTH2_FACEBOOK_CLIENT_SECRET="your_facebook_client_secret"
```

### Database Configuration
```bash
export DEV2_DATASOURCE_URL="jdbc:postgresql://your_host:5432/teachua"
export DEV2_DATASOURCE_USER="your_db_user"
export DEV2_DATASOURCE_PASSWORD="your_db_password"
export PROD_DATASOURCE_URL="jdbc:postgresql://your_host:5432/teachua"
export PROD_DATASOURCE_USER="your_db_user"
export PROD_DATASOURCE_PASSWORD="your_db_password"
export DATASOURCE_USER="your_local_db_user"
export DATASOURCE_PASSWORD="your_local_db_password"
```

### Mail Configuration
```bash
export USER_EMAIL="your_email@example.com"
export USER_PASSWORD="your_email_password"
export SEND_PASSWORD="your_email_send_password"
```

### Google Cloud Services
```bash
export GOOGLE_MAP_KEY="your_google_maps_api_key"
export GOOGLE_CLOUD_PROJECT="your_gcp_project_id"
export GOOGLE_PRIVATE_KEY_ID="your_private_key_id"
export GOOGLE_CLIENT_ID="your_google_client_id"
export GOOGLE_CERT_URL="your_certificate_url"
export SERVICE_ACCOUNT_CLIENT_EMAIL="your_service_account@project.iam.gserviceaccount.com"
export SERVICE_ACCOUNT_PRIVATE_KEY="your_private_key"
```

## Setup Instructions

1. Clone this repository
2. Copy the environment variables above and replace with your actual values
3. Source the environment file: `source setenv.sh`
4. Run the application

## Security Note
Never commit actual secrets to this repository. Always use environment variables or secure secret management solutions. 