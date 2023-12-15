from django.db import models # importing the models
from django.utils import timezone

class Post(models.Model):
    title = models.CharField(max_length=250) # This is a varchar to contain the title with the maximum size of 250 characters
    slug = models.SlugField(max_length=250) # This is var char or columns of characters with the maximum size of 250 characters
    body = models.TextField() # This is a text field to contain the body of each blog
    """
    ↓ The next line: ↓
    This is a DateTimeField field. We will use it to store the last date and time when the post was updated. By using auto_now, the date will be updated
    automatically when saving an object.
    """
    publish = models.DateTimeField(default=timezone.now)
    """
    ↓The next line:↓
    This is a DateTimeField field. We will use it store the date and time when the post was created. By using auto_now_add, the date will be saved
    automatically when creating an object.
    """
    created = models.DateTimeField(auto_now_add=True)
    """
    ↓ The next line: ↓
    This is a DateTimeField field that translates into a DATETIME column in the SQL database. We will use it to store the date and time when the 
    post was published. We use Django's timezone.now mehtod as the default value for the field. Note that we imported the timezone module to use
    this method. timezone.now returns the current datetime in a timezone-aware format. You can think of it as a timezone-aware version of the 
    standard Python datetime.now method.
    """
    updated = models.DateTimeField(auto_now=True)
    
    
    """
    This is a pyhton default method to return a string with the human-readble representation of the object
    Django will use this method to diaplay the name of the object in many places, such as the Django administration site   
    """
    
    def __str__(self): 
        return self.title