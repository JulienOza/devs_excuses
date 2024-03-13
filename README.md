# Developer's Excuses

This web-app display random humoristical messages for fake http errors.
Labour illusion effect when generating a new message (1s to 5s random loading delay).
Every error can be directly displayed by entering its corresponding HTTP code after the home URL (add /#http_code_number).
If the code doesn't exist, you get a cutom 404 error page (automatic redirection to home after a few seconds).
You can also add your own messages (only from back-end route for now).
Easter egg : desptite this detailled README, perhaps you'll get /lost anyway...

## Stack

### Frontend :

- React Vite
- SASS
- React Router

### Backend :

- Express
- Nodemon
- Dotenv
- MySQL2
- Cors

## How to launch

- clone this repo
- in the /front and /back folder: rename the ".env.sample" files ".env" and edit them with your own environment variables
- in the back folder run "npm db:migrate", then run "npm install", then run "npm run dev"
- in the /front folder run "npm install", then run "npm run dev"
