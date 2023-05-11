import 'package:flutter/material.dart';
import 'package:welcome/main.dart';
// import 'package:welcome/pages/drawer.dart';



class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
             leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pushReplacement(
            context,
            MaterialPageRoute<void>(
              builder: (BuildContext context) => const MyApp(
                  // title: 'Houses',
                  ),
            ),
          ),
        ),
        title: const Text('Wollo University Student Clubs',
            style: TextStyle(color: Colors.white)),
        backgroundColor: const Color.fromARGB(255, 114, 90, 208),
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Padding(
        
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 0.0),
        child: ListView.builder(
          
          itemCount: _images.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              // title: Text('Tile $index'),
              title: Text(
                _name[index],
              ),
              leading: Hero(
                tag: index,
                child: SizedBox(
                  height: 100,
                  width: 100,
                  child: CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage(_images[index]),
                  ),
                ),
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => SecondPage(heroTag: index)));
              },
              
           
            );
          },
        ),
            
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  final int heroTag;

  const SecondPage({Key? key, required this.heroTag}) : super(key: key);
  // const SecondPage({super.key, required this.heroTag});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          title: Text(
            _name[heroTag],
            style: const TextStyle(color: Colors.white),
          ),
          backgroundColor: const Color.fromARGB(255, 114, 90, 208),
          iconTheme: const IconThemeData(color: Colors.white)),
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Center(
                child: Hero(
                  tag: heroTag,
                  child: Image.asset(_images[heroTag]),
                ),
              ),
              Text(
                _name[heroTag],
                style: const TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.w800,
                  color: Colors.black,
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Text(
                  _det[heroTag],
                  style: const TextStyle(fontSize: 20, color: Colors.grey),

                  // softWrap: true,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

final List<String> _images = [
  'assets/images/union.jpg',
  'assets/images/techino.png',
  'assets/images/charity.png',
  'assets/images/polis.png',
  'assets/images/eth.png',
  'assets/images/sus.jpg',
  'assets/images/Arengudi(2).png',
  'assets/images/selam.jpg',
  'assets/images/muday.png',
];
final List<String> _name = [
  'Student Union',
  'TechIno Club',
  'KIOT Charity',
  'Student Police',
  'Student Ethics and Anti-Corruption Forum',
  'Anti-Drug and Ethical Club',
  'Green Forum',
  'Peace Forum',
  'Muday Wollo',
];

final List<String> _det = [
  """Dear students, we wish you a great wellcome to the University of Love and Arts. Dear students of our campus, the student union is a structure made up of students and works as a bridge for students and the entire campus community to ensure peaceful and effective learning and teaching. Therefore, it is with pleasure that we are always at your side, by answering any questions you may have during your stay in the campus, and by providing assistance to the relevant body, as well as providing the help you need.
You can get help by calling the addresses mentioned for any questions or information you need. 
Also join our Telegram channel.https://t.me/wollostu
or 
contact Yilma Adam 0960024744
""",

  """The Wollo University Kombolcha Institute of Technology's Students Technology and Innovation Club's primary goal is to support students who have technological and creative skills, and for students who are not in the department in which they are interested in, it aims to expand their knowledge and learn new things.

"Let's talk about the future!"
Contact: 0936258910
""",

  """Wolo University Kombolcha Institute of Technology Charity Club was founded in 2005 by no more than 10 sincere volunteers!!!

Vision: No student should drop out of school due to economic problems.
  Our club is providing humanitarian support to the local community beyond our university.
For example: - By giving a tutorial at Kombolcha city school
*Blood donation
* Full support for graduate students who need support
* Support for women's hygiene
*Daily food for community members who need support, etc
Let's be a part of this good work together!!
For more information
Address :- Architecture Building Ground Floor
In our Telegram channel t.me/kiotccfamily
Phone number : 0967164000""",

  """The Wollo University Kombolcha Institute of Technology's student police department's goals are to uphold student tranquility and promote an efficient teaching and learning environment. 
  Contact : 0928420733 banteamlak Begashaw""",

  //  'Arenguadi Limat',

  """Wolo University Kombolcha Institute of Technology Student Ethics and Anti-Corruption Forum Our aim It is to create a generation that is morally mature, and built with good character, that will write the destiny of tomorrow's Ethiopia in bright colors that despises fraud, stupidity, corruption and corruption. Let's prevent corruption and corruption together!!
   "Let's create a corruption-free Ethiopia today!!"
   Any suggestions and comments Contact the president of the forum - Agegnehu Kassahun 0922632726 or
    Office No: 1506""",

  """The Wollo University Kombolcha Institute of Technology Students Anti-Drug and Ethical Club's main objective is to create students who are  free from addiction, created with high morals, constructed with a strong intellect, successful in school, and who enjoy work and peace deserving of nation-building.

"We are all gorgeous. Let's keep addiction away from our beauty.
Contact 0963711401
""",
  """
The Wollo University Kombolcha Institute of Technology Students Organization of green development team
The purpose Creating a beautiful, clean and attractive environment for students
Contact 0943339874
""",
  """Wollo university Kombolcha Institute of Technology
Peace forum
Peace means that human beings go out in peace and enter in peace
It means to be free from fear and anxiety.
aim of peace Forum
Develop an attitude of peaceful resolution of conflicts:  Students interact with each other, teachers, administrative staff and
Increasing their good relationship with the community.
Students to listen, argue, negotiate and come to a compromise
Getting them to practice the process as much as they can.
Contact : 0943522608
""",
  """Mudaye Wollo Art Gallery" A unique art gallery.
It was established in September 2010, and since its establishment, it has organized many art platforms, including
Play
Literature
music
drawing art
dance
Graphics
Movie
   Reading talk shows and brainstorming are the highlights.
As this sector is a talent, it is a wide platform where anyone can become a member and develop their talent.
The doors of art are always open!
  Mudaye Wolo Art Gallery.
  Contact 0916517946
  """
];
