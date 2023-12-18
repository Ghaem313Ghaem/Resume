# **Chapter 8: Custom User Model**

Django’s built-in User model allows us to start working with users right away, as we just did with our Blog app in the previous chapters. However, the official Django documentation highly recommends using a custom user model for new projects. The reason is that if you want to make any changes to the User model down the road–-for example adding an age field-–using a custom user model from the beginning makes this quite easy. But if you do not create a custom user model, updating the default User model in an existing Django project is very, very challenging. So always use a custom user model for all new Django projects. But the approach demonstrated in the official documentation example112 is actually not what many Django experts recommend. It uses the quite complex AbstractBaseUser when ifwe just use AbstractUser instead things are far simpler and still customizable. Thuswe will use AbstractUser in this chapter wherewe start a newNewspaper app properly with environment variables and a custom user model. The choice of a newspaper app pays homage to Django’s roots as a web framework built for editors and journalists at the Lawrence JournalWorld.