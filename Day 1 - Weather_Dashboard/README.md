DAY 1: 🌤️ Weather Data Collection System with OpenWeather API & AWS S3
Overview
This project focuses on gathering real-time weather data from the OpenWeather API and securely storing it in AWS S3. The system is designed to handle multiple cities and automatically retrieve weather data at regular intervals, offering a reliable solution for weather tracking and analysis

Key Features
- Retrieves live weather information through the OpenWeather API.
- Automatically generates unique AWS S3 bucket names for each data collection.
- Saves weather data in a user-friendly JSON format for easy retrieval and analysis.
- Supports multiple cities and can be configured for periodic updates.

Prerequisites
Before you begin, ensure you have the following:

☁️ **AWS Account**: Required to create and manage S3 buckets.  
🌍 **OpenWeather API Key**: Obtain your API key by signing up at OpenWeather.  

Environment Setup:
- 🐍 Python 3.x
- 🔨 AWS CLI: Ensure it’s configured with your credentials.
- 📚 Required Python Libraries**: Listed below in `requirements.txt'.

Installation Steps

1. Clone the Repository:
   
   git clone https://github.com/Samuel-Oyedeji/30-Days-DevOps-Challenge-DevOpsAllStarsChallenge
   cd weather-dashboard
   

2. Install Dependencies:
   
   pip install -r requirements.txt

3. Set Up Environment Variables:
 
   OPENWEATHER_API_KEY=your_openweather_api_key
   AWS_BUCKET_NAME=your_aws_bucket_name

4. Configure AWS CLI:
   Run the following command to ensure your AWS CLI is properly configured:
     aws configure
   
 Usage

To start collecting weather data, run the following script:

python weather_data.py

Example Output:

Fetching weather for New York...
Temperature: 26.06°F
Feels like: 13.46°F
Conditions: clear sky
Successfully saved data for New York to S3
Weather data for New York saved to S3!


File Structure

weather-dashboard/
  src/
    __init__.py
    weather_dashboard.py
  tests/
  data/
  .env
  .gitignore
  requirements.txt


AWS S3 Bucket Naming
Bucket names are generated dynamically with a prefix (from your `.env` file) and a random suffix. Each name must be globally unique, e.g., `weather-data-12345`.

Dependencies
Install the necessary Python libraries:

- boto3: AWS SDK for Python
- requests: For HTTP API requests
- python-dotenv: To manage environment variables

Deployment
Deploy this system on AWS Lambda or an EC2 instance to continuously collect weather data
