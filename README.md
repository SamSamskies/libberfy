# Libberfy Mad Libs API

This API is built using a Mad Lib generating gem I made. Please check <a href="https://github.com/SamSamskies/madlibber">https://github.com/SamSamskies/madlibber</a> for more info.

Check it out:
- Without blanks param:
<a href="http://libberfy.herokuapp.com?q=Hello%20world.%20Testing%20this%20API.">http://libberfy.herokuapp.com?q=Hello%20world.%20Testing%20this%20API.</a>

- With blanks param:
<a href="http://libberfy.herokuapp.com?blanks=1&q=Hello%20world.%20Testing%20this%20API.">http://libberfy.herokuapp.com?blanks=1&q=Hello%20world.%20Testing%20this%20API.</a>


## USAGE
Send a GET request with 'q' as a key and a body of text as it's value...
```
http://libberfy.herokuapp.com?q=At Indiegogo you’ll find a welcoming, supportive community that
embraces collaboration, fearlessness and authenticity. We are a rapidly growing organization and
our platform is used by people all over the world to raise money for their creative,
cause-related, or entrepreneurial ideas. Our customers are passionate about their funding
campaigns, and so are we! We are a team of passionate, results-driven, team-players who are lucky
enough to be able to call “helping people achieve their dream” work. We love our dogs, good food,
coffee, and post-it notes! Lots of post-it notes!
```

Get back a Mad Libberfied version of the text in sweet JSON...
```json
{
"madlib": "At Indiegogo you'll find a welcoming , <adjective> <noun> that embraces
collaboration , fearlessness and authenticity . We are a rapidly <verb_ending_with_ing>
organization and our platform is used by people all over the world to <verb> <noun> for
their creative , cause-related , or entrepreneurial ideas . Our customers are passionate
about their funding campaigns , and so are we ! We are a team of <adjective> ,
results-driven , team-players who are lucky <adjective> to be able to <verb> “helping
people achieve their dream” work . We love our dogs , good <noun> , coffee , and post-it
notes ! Lots of <noun> notes !"
}
```

### OPTIONS

```
blanks (defaults to 10)
html_form (defaults to false)
```

```
http://libberfy.herokuapp.com?blanks=5&html_form=1&q=At Indiegogo you’ll find a welcoming,
supportive community that embraces collaboration, fearlessness and authenticity. We are a
rapidly growing organization and our platform is used by people all over the world to raise
money for their creative, cause-related, or entrepreneurial ideas. Our customers are
passionate about their funding campaigns, and so are we! We are a team of passionate,
results-driven, team-players who are lucky enough to be able to call “helping people achieve
their dream” work. We love our dogs, good food, coffee, and post-it notes! Lots of post-it notes!
```

Get back a ready to use HTML form...
```json
{
"madlib": "<form id='madlib-form'> At Indiegogo you’ll find a welcoming , supportive
community that embraces collaboration , fearlessness and authenticity . We are a
rapidly growing organization and our platform is used by people all over the world to
raise money for their creative , cause-related , or entrepreneurial ideas . Our
<input type='text' placeholder='plural_noun'> are passionate about their
<input type='text' placeholder='noun'> campaigns , and so are we ! We are a
<input type='text' placeholder='noun'> of passionate , results-driven , team-players
who are lucky enough to be able to <input type='text' placeholder='verb'>
<input type='text' placeholder='proper_noun'> people achieve their dream” work . We
love our dogs , good food , coffee , and post-it notes ! Lots of post-it notes !
<input type='submit'> </form>"
}
```