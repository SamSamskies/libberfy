# Libberfy Mad Libs API

Send a GET request with 'q' as a key and a body of text as it's value...
```
http://libberfy.herokuapp.com/?q=At Indiegogo you’ll find a welcoming, supportive community that
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
"madlib": "At Indiegogo <noun> find a welcoming , <adjective> community that embraces
collaboration , fearlessness and authenticity . We are a rapidly <verb_ending_with_ing>
organization and our platform is used by people all over the world to <verb> <noun> for
their creative , cause-related , or entrepreneurial ideas . Our customers are passionate
about their funding campaigns , and so are we ! We are a team of <adjective> ,
results-driven , team-players who are lucky <adjective> to be able to <verb> “helping
people achieve their dream” work . We love our dogs , good <noun> , coffee , and post-it
notes ! Lots of <noun> notes !"
}
```