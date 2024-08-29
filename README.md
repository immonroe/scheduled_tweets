# Scheduled Tweets

Scheduled_Tweets is designed to allow users to schedule tweets to be sent out at a specified time using the Twitter API.

## Table of Contents

- [Installation](#installation)
- [Configuration](#Configuration)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#License)

## Installation

Clone the repository:

```bash
git clone https://github.com/yourusername/Scheduled_Tweets.git
cd Scheduled_Tweets
```
Install dependencies:

```bash
bundle install
```

Set up the database:

```bash
rails db:create db:migrate
```

Run the server

```bash
rails server
```

## Configuration

Environment Variables:
Create a .env file in the root directory to store any sensitive information like API keys or environment-specific settings. 

Example:

```makefile
TWITTER_API_KEY=your_key_here
TWITTER_API_SECRET=your_secret_here
```

## Usage

Sign Up:
Users can sign up for an account by providing a username, email, and password.

Log In:
Existing users can log in using their email and password.

Password Management:
Users can reset or change their passwords using the "Forgot Password" or "Edit Profile" features.

Dashboard:
The main dashboard will eventually display scheduled tweets and provide options to create new ones (functionality in progress).

## Contributing

Contributions are welcome! Feel free to open an issue or submit a pull request.

- Fork the repository.
- Create your feature branch (git checkout -b feature/AmazingFeature).
- Commit your changes (git commit -m 'Add some AmazingFeature').
- Push to the branch (git push origin feature/AmazingFeature).
- Open a pull request.

## License

This project is licensed under the MIT License.