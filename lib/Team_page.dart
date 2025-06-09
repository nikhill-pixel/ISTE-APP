import 'package:flutter/material.dart';

class TeamPage extends StatelessWidget {
  final bool isDarkMode;
  const TeamPage({super.key, required this.isDarkMode});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Team Hierarchy',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: TeamScreen(isDarkMode:isDarkMode),
    );
  }
}

class TeamScreen extends StatefulWidget {
  final bool isDarkMode;
  const TeamScreen({super.key, required this.isDarkMode});
  @override
  _TeamScreenState createState() => _TeamScreenState();
}

class _TeamScreenState extends State<TeamScreen> {
  List<Map<String, String>> adminCore = [
    {'name': 'Hari Sharan', 'year': '2025', 'contact': '8884325516'},
    {'name': 'Hemanth Somanna', 'year': '2025', 'contact': '7760955715'},
    {'name': 'Ojusvi', 'year': '2025', 'contact': '8277242339'},
    {'name': 'Rohith Shinoj Kumar', 'year': '2025', 'contact': '8848790113'},
    {'name': 'Ananya Mondal', 'year': '2025', 'contact': '9330301042'},
    {'name': 'Divyamshu M P', 'year': '2025', 'contact': '9019134757'},
    {'name': 'Shradha Harris', 'year': '2025', 'contact': '9663707774'},
    {'name': 'Hritik Kapoor', 'year': '2025', 'contact': '9816216127'},
  ];

  List<Map<String, String>> executiveCore = [
    {'name': 'Aanchal Nayak', 'year': '2025', 'contact': '7975569542'},
    {'name': 'Amoghavarsha G J', 'year': '2025', 'contact': '9483037162'},
    {'name': 'Yash Malve', 'year': '2025', 'contact': '9980101733'},
    {'name': 'Aakash R V', 'year': '2025', 'contact': '8688840881'},
    {'name': 'Sudarshan Zunja', 'year': '2025', 'contact': '9019279828'},
    {'name': 'Sugavanam Senthil', 'year': '2025', 'contact': '8939415930'},
    {'name': 'Medagam Sri Madhurima', 'year': '2025', 'contact': '8919415917'},
    {'name': 'Akhil Alluri', 'year': '2025', 'contact': '7760077489'},
    {'name': 'Prateek Rajput', 'year': '2025', 'contact': '9149034226'},
    {'name': 'Raghav Kirkol', 'year': '2025', 'contact': '9356071009'},
    {'name': 'Shradha Harris', 'year': '2025', 'contact': '9663707774'},
    {'name': 'Ayushmaan Srivastava', 'year': '2025', 'contact': '9110293181'},
    {'name': 'Rakshith S', 'year': '2025', 'contact': '7349210972'},
    {'name': 'Siddharth Kelkar', 'year': '2025', 'contact': '6355510575'},
    {'name': 'Pranav Salunkhe', 'year': '2025', 'contact': '9175510124'},
    {'name': 'Akul Arora', 'year': '2025', 'contact': '7625027222'},
  ];

  List<Map<String, String>> auxCore = [
    {'name': 'Nisarg Rajdeep', 'year': '2026', 'contact': '8866475747'},
    {'name': 'Riya Aji', 'year': '2026', 'contact': '8089590299'},
    {'name': 'Poorva Bhagwat', 'year': '2026', 'contact': '8275391841'},
    {'name': 'Jeevotham Shenoy', 'year': '2026', 'contact': '7892743530'},
    {'name': 'Kannika Chikkannavar', 'year': '2026', 'contact': '8217050422'},
    {'name': 'Anushka Mishra', 'year': '2026', 'contact': '7880591285'},
    {'name': 'Ansh Malhotra', 'year': '2026', 'contact': '7483954676'},
    {'name': 'Anjana T K', 'year': '2026', 'contact': '9483886334'},
    {'name': 'Likith M', 'year': '2026', 'contact': '8050518620'},
  ];

  List<Map<String, String>> executiveMembers = [
    {'name': 'Akshara B', 'year': '2025', 'contact': '8179365160'},
    {'name': 'Gulshan Goyal', 'year': '2025', 'contact': '9784854329'},
    {'name': 'Abhishek', 'year': '2025', 'contact': '6376282623'},
    {'name': 'Arjun Junagal', 'year': '2025', 'contact': '6378812949'},
    {'name': 'Haridarshan N', 'year': '2025', 'contact': '8310774106'},
    {'name': 'Shreyansh Das', 'year': '2025', 'contact': '9958162570'},
    {'name': 'Chaitra S', 'year': '2025', 'contact': '6364002467'},
    {'name': 'Sujan S', 'year': '2025', 'contact': '7022778320'},
    {'name': 'K Lavanya', 'year': '2025', 'contact': '8496941936'},
    {'name': 'Kaveri Harakuni', 'year': '2025', 'contact': '7676694157'},
    {'name': 'Siddhi Parkar', 'year': '2025', 'contact': '9011404950'},
    {'name': 'Siddh Shetty', 'year': '2025', 'contact': '7760767777'},
    {'name': 'Alfaiz Shaikh', 'year': '2025', 'contact': '7869674170'},
    {'name': 'Hari Sharan', 'year': '2025', 'contact': '8884325516'},
    {'name': 'Hemanth Somanna', 'year': '2025', 'contact': '7760955715'},
    {'name': 'Himanshu Das', 'year': '2025', 'contact': '7337844338'},
    {'name': 'Piyush Kumar Rauniyar', 'year': '2025', 'contact': '8529141801'},
    {'name': 'Priyanshu Sharma', 'year': '2025', 'contact': '9306472273'},
    {'name': 'Vibhanshu vishal', 'year': '2025', 'contact': '9990646518'},
    {'name': 'Yashas R S', 'year': '2025', 'contact': '6360487735'},
    {'name': 'Lukeshwar', 'year': '2025', 'contact': '7999774858'},
    {'name': 'Arjun S Deginal', 'year': '2025', 'contact': '8762776320'},
    {'name': 'Chandan Kumar', 'year': '2025', 'contact': '7480018985'},
    {'name': 'Chetan Maheshwari', 'year': '2025', 'contact': '7719601170'},
    {'name': 'Nandana Shashi', 'year': '2025', 'contact': '9148583671'},
    {'name': 'Reuben Silveira', 'year': '2025', 'contact': '9987648982'},
    {'name': 'Sugavanam Senthil', 'year': '2025', 'contact': '8939415930'},
    {'name': 'Yash Malve', 'year': '2025', 'contact': '9980101733'},
    {'name': 'Aakash Reddy R V', 'year': '2025', 'contact': '8688840881'},
    {'name': 'Divyangana Chandra', 'year': '2025', 'contact': '7417771642'},
    {'name': 'Vishnu kumar tailor', 'year': '2025', 'contact': '8949455779'},
    {'name': 'Avula Mallishwari', 'year': '2025', 'contact': '9949036379'},
    {'name': 'Charan Sai', 'year': '2025', 'contact': '6305629483'},
    {'name': 'Sanjeev Kumar Sethi', 'year': '2027', 'contact': '7975965223'},
    {'name': 'Abhay Hubballi', 'year': '2025', 'contact': '9741571976'},
    {'name': 'Aditya Singh Chauhan', 'year': '2025', 'contact': '9554566491'},
    {'name': 'Ainesh Sinha', 'year': '2025', 'contact': '6364908666'},
    {'name': 'A Varun Teja', 'year': '2025', 'contact': '7794825330'},
    {'name': 'Ayushmaan Srivastava', 'year': '2025', 'contact': '9110293181'},
    {'name': 'Bhaskara Akhila', 'year': '2025', 'contact': '9019008792'},
    {'name': 'Kamaldeep Singh', 'year': '2025', 'contact': '8826295238'},
    {'name': 'Omkar Jungade', 'year': '2025', 'contact': '9819574479'},
    {'name': 'Saliq Gowhar Khan', 'year': '2025', 'contact': '7780849120'},
    {'name': 'Garvit Goyal', 'year': '2025', 'contact': '9929387567'},
    {'name': 'Kushangi Sharma', 'year': '2025', 'contact': '9801271144'},
    {'name': 'Sachin Prasanna', 'year': '2025', 'contact': '9003378397'},
    {'name': 'Pranav Salunkhe', 'year': '2025', 'contact': '9175510124'},
    {'name': 'Siddharth Kelkar', 'year': '2025', 'contact': '6355510575'},
    {'name': 'Sudarshan Zunja', 'year': '2025', 'contact': '9019279828'},
    {'name': 'Akhil Alluri', 'year': '2025', 'contact': '7760077489'},
    {'name': 'Medagam Sri Madhurima', 'year': '2025', 'contact': '8919415917'},
    {'name': 'Shashi Kiran', 'year': '2025', 'contact': '8050001630'},
    {'name': 'Ojusvi', 'year': '2025', 'contact': '8277242339'},
    {'name': 'Sidhanth Shekhar', 'year': '2025', 'contact': '7061216862'},
    {'name': 'Isha Prabhu', 'year': '2025', 'contact': '8050299819'},
    {'name': 'Maramreddy Gayathri Reddy', 'year': '2025', 'contact': '7815836068'},
    {'name': 'Nived Philip Thomas', 'year': '2025', 'contact': '9110581955'},
    {'name': 'Shradha Harris', 'year': '2025', 'contact': '9663707774'},
    {'name': 'Y.Sucharitha', 'year': '2025', 'contact': '6305476573'},
    {'name': 'Aman', 'year': '2025', 'contact': '8057833140'},
    {'name': 'Rakshitha S', 'year': '2025', 'contact': '7349210972'},
    {'name': 'Rohan', 'year': '2025', 'contact': '9036551992'},
    {'name': 'Shivam Tewari', 'year': '2025', 'contact': '6397701515'},
    {'name': 'Swastik', 'year': '2025', 'contact': '8073681247'},
    {'name': 'Urvesh Parmar', 'year': '2025', 'contact': '9723183227'},
    {'name': 'Ayush Pandey', 'year': '2025', 'contact': '7597608547'},
    {'name': 'Soumi Ganguly', 'year': '2025', 'contact': '9303463979'},
    {'name': 'Hritik Kapoor', 'year': '2025', 'contact': '9816216127'},
    {'name': 'Mukund Loya', 'year': '2025', 'contact': '9425651227'},
    {'name': 'Abhishek Boranni', 'year': '2026', 'contact': '7411291956'},
    {'name': 'Aditya Bisen', 'year': '2026', 'contact': '7666112972'},
    {'name': 'Azmeera', 'year': '2026', 'contact': '9392651554'},
    {'name': 'B. Hema Swaroop', 'year': '2026', 'contact': '6304598145'},
    {'name': 'Yash Desai', 'year': '2026', 'contact': '9324750379'},
    {'name': 'DHANUSH T', 'year': '2026', 'contact': '7204707900'},
    {'name': 'Divyanshu Ratnakar', 'year': '2026', 'contact': '8409944983'},
    {'name': 'Harsh Pratap Singh', 'year': '2026', 'contact': '9149331349'},
    {'name': 'Mohammad Adil', 'year': '2026', 'contact': '9652858191'},
    {'name': 'Prasanna R T', 'year': '2026', 'contact': '7892469278'},
    {'name': 'Priyanshu Kumar', 'year': '2026', 'contact': '7348124952'},
    {'name': 'Rashmi K Murthy', 'year': '2026', 'contact': '9353332453'},
    {'name': 'Adarsh Ranjan', 'year': '2026', 'contact': '9972854652'},
    {'name': 'Jubitha Sri', 'year': '2026', 'contact': '6300665112'},
    {'name': 'Rahul Ganta', 'year': '2026', 'contact': '6303883164'},
    {'name': 'Harsh Gupta', 'year': '2026', 'contact': '9555468659'},
    {'name': 'P Devi Deepika', 'year': '2026', 'contact': '6360920665'},
    {'name': 'Aditya Goyal', 'year': '2026', 'contact': '6367359232'},
    {'name': 'Ansh Vivek Malhotra', 'year': '2026', 'contact': '7483954676'},
    {'name': 'Bhagwat Poorva Milind', 'year': '2026', 'contact': '8275391841'},
    {'name': 'Harsha Gundapalli', 'year': '2026', 'contact': '8792251009'},
    {'name': 'Kakarla Naveen Janaki Ram', 'year': '2026', 'contact': '9481543685'},
    {'name': 'Rohit Sunil', 'year': '2026', 'contact': '6366076567'},
    {'name': 'Adithya M', 'year': '2026', 'contact': '9108873521'},
    {'name': 'Likith M', 'year': '2026', 'contact': '8050518620'},
    {'name': 'Ponnolu Sanjeeva Thanmaiee', 'year': '2026', 'contact': '9440650167'},
    {'name': 'Riya Aji', 'year': '2026', 'contact': '8089590299'},
    {'name': 'CP Shreyas', 'year': '2026', 'contact': '9606768687'},
    {'name': 'Tammisetti Sesha Satwika', 'year': '2026', 'contact': '9515135085'},
    {'name': 'Jeevotthama Shenoy K', 'year': '2026', 'contact': '7892743530'},
    {'name': 'Kannika M Chikkannavar', 'year': '2026', 'contact': '8217050422'},
    {'name': 'Sahil Hinwani', 'year': '2026', 'contact': '9508883828'},
    {'name': 'Sai Kiran R K', 'year': '2026', 'contact': '8792180089'},
    {'name': 'Shambavi Jha', 'year': '2026', 'contact': '9008971509'},
    {'name': 'Anushka Mishra', 'year': '2026', 'contact': '7880591285'},
    {'name': 'Singampalli Bhargavi', 'year': '2026', 'contact': '8520833933'},
    {'name': 'Thatavarthi Rupesh Kumar', 'year': '2026', 'contact': '7075010205'},
    {'name': 'Arjun Singh', 'year': '2026', 'contact': '8452943399'},
    {'name': 'Mahesh Goud', 'year': '2026', 'contact': '8867614956'},
    {'name': 'Linisha R', 'year': '2026', 'contact': '7899129125'},
    {'name': 'Vayun Jain', 'year': '2026', 'contact': '9035004887'},
    {'name': 'Amaan Farhan', 'year': '2026', 'contact': '7204757686'},
    {'name': 'Pallavi Parage', 'year': '2026', 'contact': '8263071751'},
    {'name': 'Sanket Sudhakar Sakhare', 'year': '2026', 'contact': '9025763112'},
    {'name': 'Yashwanth K R', 'year': '2026', 'contact': '7349455364'},
    {'name': 'Anjana T K', 'year': '2026', 'contact': '9483886334'},
    {'name': 'Chavan Soham Ashok', 'year': '2026', 'contact': '9137363137'},
    {'name': 'C. Rushi Ganesh', 'year': '2026', 'contact': '9980241326'},
    {'name': 'Dipankar Deka', 'year': '2026', 'contact': '8876890384'},
    {'name': 'Jinti P Kalita', 'year': '2026', 'contact': '7002282812'},
    {'name': 'Kalpana Swamy K N', 'year': '2026', 'contact': '7411021381'},
    {'name': 'Nikhitha Mathew', 'year': '2026', 'contact': '8547964677'},
    {'name': 'Janani Nune', 'year': '2026', 'contact': '8247434197'},
    {'name': 'Shubhang Chauhan', 'year': '2026', 'contact': '8960874208'},
    {'name': 'Yangala Sahithi', 'year': '2026', 'contact': '7995714999'},
    {'name': 'Abdul Hadi', 'year': '2026', 'contact': '971569190311'},
    {'name': 'J Sandeep', 'year': '2026', 'contact': '8073319477'},
    {'name': 'Shaikshavali p', 'year': '2026', 'contact': '7483891188'},
    {'name': 'Rajmani Pandey', 'year': '2026', 'contact': '9326637582'},
    {'name': 'Sonali Kannojiya', 'year': '2026', 'contact': '8299073978'},
    {'name': 'Suveena Sadashiv', 'year': '2026', 'contact': '9591101797'},
    {'name': 'Tharlada Durga Tirumala Nischal', 'year': '2026', 'contact': '7671024193'},
    {'name': 'Vanama Bhanu Prakash', 'year': '2026', 'contact': '8341295073'},
    {'name': 'Virri Pranav', 'year': '2026', 'contact': '9110549619'},
    {'name': 'Vishwajeet Hanamant Dodyalkar', 'year': '2026', 'contact': '9322543156'},
    {'name': 'Gagandeep N Aralaguppi', 'year': '2026', 'contact': '8296231104'},
    {'name': 'Yash Hurkat', 'year': '2026', 'contact': '7383952604'},
    {'name': 'Jefrry Thomas Jaison', 'year': '2026', 'contact': '8848635629'},
    {'name': 'L Raghunaik', 'year': '2026', 'contact': '8722661046'},
    {'name': 'Nithin S', 'year': '2026', 'contact': '8431751290'},
    {'name': 'Tanishq Arnav Beck', 'year': '2026', 'contact': '9903118018'},
    {'name': 'Ajay T S', 'year': '2026', 'contact': '8277134881'},
    {'name': 'Ashlesh Naik', 'year': '2026', 'contact': '9902654197'},
    {'name': 'Greeshma P K', 'year': '2026', 'contact': '9731933670'},
    {'name': 'Juluri Girish', 'year': '2026', 'contact': '9121214644'},
    {'name': 'Kartik Verma', 'year': '2026', 'contact': '9720516222'},
    {'name': 'Niharika Rathore', 'year': '2026', 'contact': '7232961354'},
    {'name': 'Saket Phanshikar', 'year': '2026', 'contact': '9665437686'},
    {'name': 'Shivakumar V Kannur', 'year': '2026', 'contact': '7892457706'},
    {'name': 'Batini Ashwini', 'year': '2026', 'contact': '7680845464'},
    {'name': 'Kumari Aachal', 'year': '2026', 'contact': '8271219216'},
    {'name': 'Manisha', 'year': '2026', 'contact': '6205772254'},
    {'name': 'Naisha Kishore', 'year': '2026', 'contact': '9483364939'},
    {'name': 'R Dharshini', 'year': '2026', 'contact': '7483398449'},
    {'name': 'Nisarg Rajdeep', 'year': '2026', 'contact': '8866475747'},
    {'name': 'Shreyas Nageshwar', 'year': '2026', 'contact': '8618982573'},
    {'name': 'Tejas K Raysad', 'year': '2026', 'contact': '8431254302'},
    {'name': 'Deepesh Nagwani', 'year': '2026', 'contact': '9302609791'},
    {'name': 'Pushkar Singh Rathore', 'year': '2026', 'contact': '9353110862'},
    {'name': 'Abdul Wasey', 'year': '2026', 'contact': '7090344713'},
    {'name': 'Abhishek A', 'year': '2026', 'contact': '7510134177'},
    {'name': 'Sonal Shriya Pai', 'year': '2026', 'contact': '6366469293'},
    {'name': 'Vellalacheruvu Raviteja', 'year': '2026', 'contact': '7702553129'},
    {'name': 'Abhimanyu Binu', 'year': '2027', 'contact': '6282555316'},
    {'name': 'Dishanth Arya', 'year': '2027', 'contact': '7829370710'},
    {'name': 'Shreya S', 'year': '2027', 'contact': '8105378189'},
    {'name': 'Varun Matthew', 'year': '2027', 'contact': '8714229925'},
    {'name': 'Adhil Ali', 'year': '2027', 'contact': '9074485404'},
    {'name': 'Anantha Krishnan', 'year': '2027', 'contact': '9019826883'},
    {'name': 'Bhavya Saini', 'year': '2027', 'contact': '7742542003'},
    {'name': 'Vikas', 'year': '2027', 'contact': '6281649500'},
    {'name': 'Garima yadav', 'year': '2027', 'contact': '8815834489'},
    {'name': 'Hriday', 'year': '2027', 'contact': '9987521195'},
    {'name': 'Ivine Mariam Binu', 'year': '2027', 'contact': '8891867577'},
    {'name': 'Jonathan James', 'year': '2027', 'contact': '8921098505'},
    {'name': 'kethavath sanjo', 'year': '2027', 'contact': '9014745847'},
    {'name': 'Kshama Rai', 'year': '2027', 'contact': '9632330320'},
    {'name': 'Muttu', 'year': '2027', 'contact': '9019846453'},
    {'name': 'Neha Ojha Sikhwal', 'year': '2027', 'contact': '9509102615'},
    {'name': 'Rohit Singh Adhikari', 'year': '2027', 'contact': '9411152921'},
    {'name': 'Shanul Haque', 'year': '2027', 'contact': '7667765527'},
    {'name': 'Shreya H', 'year': '2027', 'contact': '7899102836'},
    {'name': 'Shubhank Hiremath', 'year': '2027', 'contact': '7204968166'},
    {'name': 'Vishal mishra', 'year': '2027', 'contact': '7081636342'},
    {'name': 'Yash Jain', 'year': '2027', 'contact': '9845641801'},
    {'name': 'Aaryan Yadav ', 'year': '2027', 'contact': '9717936126'},
    {'name': 'Atharva Parkhi', 'year': '2027', 'contact': '7725023154'},
    {'name': 'Pranav Gujjar', 'year': '2027', 'contact': '6360093455'},
    {'name': 'Arjun Rijesh', 'year': '2027', 'contact': '7019872183'},
    {'name': 'Chinmay R ', 'year': '2027', 'contact': '7975127953'},
    {'name': 'Desu Sai Chaitanya', 'year': '2027', 'contact': '8801446295'},
    {'name': 'D.Sahil Arshan   86393', 'year': '2027', 'contact': '90731'},
    {'name': 'P J Hemaakshi', 'year': '2027', 'contact': '8618357540'},
    {'name': 'Pranav Venkat', 'year': '2027', 'contact': '7975067102'},
    {'name': 'Basitha', 'year': '2027', 'contact': '9440289306'},
    {'name': 'Amarnath K Muralidhar', 'year': '2027', 'contact': '9895361420'},
    {'name': 'Anish Raja', 'year': '2027', 'contact': '8838069977'},
    {'name': 'Shiva Sai Charan', 'year': '2027', 'contact': '8074154331'},
    {'name': 'Sahitya Bhoyar', 'year': '2027', 'contact': '7020586549'},
    {'name': 'Darshan Gowda T', 'year': '2027', 'contact': '8105374899'},
    {'name': 'Hrithvik', 'year': '2027', 'contact': '6364461033'},
    {'name': 'Jagarapu Sanjana', 'year': '2027', 'contact': '9493086424'},
    {'name': 'Manas Budhiraja', 'year': '2027', 'contact': '7760618885'},
    {'name': 'Mohan Vivek', 'year': '2027', 'contact': '9553190333'},
    {'name': 'Piyush Verma', 'year': '2027', 'contact': '6200163276'},
    {'name': 'Sushanth B', 'year': '2027', 'contact': '9743853628'},
    {'name': 'Tushar Gulati', 'year': '2027', 'contact': '9310393840'},
    {'name': 'Vinitsing mohansing angadi', 'year': '2027', 'contact': '6363749411'},
    {'name': 'Aarshi Sinha', 'year': '2027', 'contact': '9604295575'},
    {'name': 'Ayush Ashvaria', 'year': '2027', 'contact': '9341092677'},
    {'name': 'Gajendra Kinodiya', 'year': '2027', 'contact': '9256728328'},
    {'name': 'N Kenisha Ishwar', 'year': '2027', 'contact': '7000851362'},
    {'name': 'Shreyas R Paledavar', 'year': '2027', 'contact': '8317321135'},
    {'name': 'Vijay Anand', 'year': '2027', 'contact': '8292414364'},
    {'name': 'Chaitanya Menon', 'year': '2027', 'contact': '8714727341'},
    {'name': 'Aditya Jyothir', 'year': '2027', 'contact': '8951048335'},
    {'name': 'P Prashanth', 'year': '2027', 'contact': '8179372370'},
    {'name': 'Hafiz Raffi', 'year': '2027', 'contact': '9072152242'},
    {'name': 'Johan Jacob', 'year': '2027', 'contact': '8891042101'},
    {'name': 'Mahadev', 'year': '2027', 'contact': '7338336678'},
    {'name': 'Manan Chordia', 'year': '2027', 'contact': '9028226202'},
    {'name': 'Shreesha Sharma', 'year': '2027', 'contact': '7892378456'},
    {'name': 'Shreyas T R', 'year': '2027', 'contact': '6361092065'},
    {'name': 'Tanush Abdulpur', 'year': '2027', 'contact': '7204100286'},
    {'name': 'Vishal K', 'year': '2027', 'contact': '8778767312'},
    {'name': 'Sanketh Verma', 'year': '2027', 'contact': '6301085986'},
    {'name': 'Madoori Sowmith .', 'year': '2027', 'contact': '9966809332'},
    {'name': 'Vinay', 'year': '2027', 'contact': '9886996320'},
    {'name': 'Pranav Poovail', 'year': '2027', 'contact': '9995191621'},
    {'name': 'Siddarthan', 'year': '2027', 'contact': '8655281896'},
    {'name': 'Vaishnav K', 'year': '2027', 'contact': '9620413983'},
    {'name': 'Kshitij Singh', 'year': '2027', 'contact': '7406100261'},
    {'name': 'Nakshathra Ajayakumar', 'year': '2027', 'contact': '9048029366'},
    {'name': 'Nisha K Viswanathan', 'year': '2027', 'contact': '8450995132'},
    {'name': 'Nitish K', 'year': '2027', 'contact': '7708550464'},
    {'name': 'Rishi M Gowda', 'year': '2027', 'contact': '9380941502'},
    {'name': 'Surepally Siri', 'year': '2027', 'contact': '7661997565'},
    {'name': 'Mohammad Kaif', 'year': '2027', 'contact': '9353286091'},
    {'name': 'Parmod Budhiraj', 'year': '2027', 'contact': '7717641448'},
    {'name': 'Venkatesh S', 'year': '2027', 'contact': '9108345993'},
    {'name': 'BK Hima Bindhu', 'year': '2027', 'contact': '9886676223'},
    {'name': 'Kartik Dodda', 'year': '2027', 'contact': '8341490804'},
    {'name': 'Lavanya Rathi', 'year': '2027', 'contact': '9983393421'},
    {'name': 'Sai Govardhan Rao Medikurthi', 'year': '2027', 'contact': '6301062797'},
    {'name': 'Nikhil Agarwal .', 'year': '2027', 'contact': '9263053097'},
    {'name': 'Harsh Revar', 'year': '2027', 'contact': '8154973306'},
    {'name': 'Ashmit Sighal', 'year': '2027', 'contact': '9910403964'},
    {'name': 'B S Shrujan Reddy', 'year': '2027', 'contact': '8431373659'},
    {'name': 'Bhoomika Arali', 'year': '2027', 'contact': '9741154137'},
    {'name': 'Marripudi Dinesh', 'year': '2027', 'contact': '9347595244'},
    {'name': 'Nitesh P', 'year': '2027', 'contact': '9886422604'},
    {'name': 'N.Rishita Srinidhi', 'year': '2027', 'contact': '9959541948'},
    {'name': 'Shreyash Sharma', 'year': '2027', 'contact': '918861304291'},
    {'name': 'Shrinivas', 'year': '2027', 'contact': '8531924442'},
    {'name': 'Tejashwini Watade', 'year': '2027', 'contact': '7204680081'},
    {'name': 'Wrick Samanta ', 'year': '2027', 'contact': '8130706338'},
    {'name': 'Jeeva K V', 'year': '2027', 'contact': '9744607324'},
    {'name': 'K.Vivek Sahil', 'year': '2027', 'contact': '9983321999'},
    {'name': 'Kommidi Amulya', 'year': '2027', 'contact': '7671919908'},
    {'name': 'Mohammed Gulzar Shaikh', 'year': '2027', 'contact': '7204064304'},
    {'name': 'S Kailasnathan', 'year': '2027', 'contact': '9446554238'},
    {'name': 'Sanstuti Mishra', 'year': '2027', 'contact': '9026309640'},
    {'name': 'Sneha', 'year': '2027', 'contact': '8217592627'},
    {'name': 'Srujan Gavimath', 'year': '2027', 'contact': '9110295885'},
    {'name': 'Ujjwal Kumar', 'year': '2027', 'contact': '8690214131'},
    {'name': 'Veeresh', 'year': '2027', 'contact': '9900223381'},
    {'name': 'Aditya Raj', 'year': '2027', 'contact': '7488295237'},
    {'name': 'B Manoj Kumar Reddy', 'year': '2027', 'contact': '9618108850'},
    {'name': 'Bhoomi', 'year': '2027', 'contact': '7676990136'},
    {'name': 'Chetana', 'year': '2027', 'contact': '8105933199'},
    {'name': 'Jiya', 'year': '2027', 'contact': '600274255'},
    {'name': 'Rajitha Malyala', 'year': '2027', 'contact': '9391664317'},
    {'name': 'Ruthvik Rohan', 'year': '2027', 'contact': '8374923059'},
    {'name': 'P.S. Mithul Sourav', 'year': '2027', 'contact': '7845160181'},
    {'name': 'Rohit Rajhans', 'year': '2027', 'contact': '9508313252'},
    {'name': 'Aayush Dubey', 'year': '2027', 'contact': '9304602398'},
    {'name': 'Abhijeet Shingade  ', 'year': '2027', 'contact': '7795542003'},
    {'name': 'Aksheet', 'year': '2027', 'contact': '8431160710'},
    {'name': 'Joshua', 'year': '2027', 'contact': '9148931738'},
    {'name': 'Yashasvi Kumar', 'year': '2027', 'contact': '8624812021'},
    {'name': 'Lalima Singh', 'year': '2027', 'contact': '7905445719'},
    {'name': 'Piyush Kumar Yadav', 'year': '2027', 'contact': '8353965811'},
    {'name': 'Radhika Sharda', 'year': '2027', 'contact': '8797106629'},
    {'name': 'Shreya Nyamati', 'year': '2027', 'contact': '6361986850'},
    {'name': 'Vinay Kotwani', 'year': '2027', 'contact': '7820827181'},
    {'name': 'Priyanshu Shakya', 'year': '2027', 'contact': '8400089344'},
    {'name': 'Ronak Rajpurohit ', 'year': '2027', 'contact': '9509656905'},
  ];

  String searchQuery = '';

  void filterSearchResults(String query) {
    setState(() {
      searchQuery = query.toLowerCase();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.isDarkMode ? const Color(0xFF131318) : Colors.white,
      appBar: AppBar(
        backgroundColor: widget.isDarkMode ? const Color(0xFF131318) : Colors.white,
        title: Text(
          'Team Hierarchy',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: widget.isDarkMode ? Colors.white : Colors.black,
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              onChanged: filterSearchResults,
              style: TextStyle(color: widget.isDarkMode ? Colors.white : Colors.black), // Text color
              cursorColor: widget.isDarkMode ? Colors.white : Colors.blue, // Cursor color
              decoration: InputDecoration(
                labelText: 'Search',
                labelStyle: TextStyle(color: widget.isDarkMode ? Colors.white : Colors.black),
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.search, color: widget.isDarkMode ? Colors.white : Colors.black),
                // Border styling for dark mode
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: widget.isDarkMode ? Colors.grey : Colors.black45),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: widget.isDarkMode ? Colors.blue : Colors.blue),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                _buildList('Admin Core', adminCore, Icons.shield),
                _buildList('Executive Core', executiveCore, Icons.stars),
                _buildList('Aux Core', auxCore, Icons.support),
                _buildList('Executive Members', executiveMembers, Icons.people),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildList(String title, List<Map<String, String>> members, IconData logoIcon) {
    // Filter members based on search query
    List<Map<String, String>> filteredMembers = members
        .where((member) => member['name']!.toLowerCase().contains(searchQuery))
        .toList();

    // If no members match the search query, don't show the section
    if (filteredMembers.isEmpty) return SizedBox.shrink();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 12.0),
          child: Row(
            children: [
              // Logo/Icon for the heading
              Container(
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: widget.isDarkMode ? Colors.blue[800] : Colors.blue[100],
                  borderRadius: BorderRadius.circular(12.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blue.withOpacity(widget.isDarkMode ? 0.3 : 0.2),
                      blurRadius: 6.0,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Icon(
                  logoIcon,
                  color: widget.isDarkMode ? Colors.white : Colors.blue[800],
                  size: 28,
                ),
              ),
              SizedBox(width: 16),
              // Heading text
              Text(
                title,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: widget.isDarkMode ? Colors.white : Colors.black,
                ),
              ),
            ],
          ),
        ),
        // Divider to visually separate the heading from list items
        Divider(
          color: widget.isDarkMode ? Colors.grey[800] : Colors.grey[300],
          thickness: 1.0,
          indent: 16.0,
          endIndent: 16.0,
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: filteredMembers.length,
          itemBuilder: (context, index) {
            final member = filteredMembers[index];
            return Padding(
              padding: const EdgeInsets.only(left: 24.0), // Indent members to show hierarchy
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: _getColorForTeam(title),
                  child: Text(
                    member['name']![0], // First letter of name
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                title: Text(
                  member['name']!,
                  style: TextStyle(
                    color: widget.isDarkMode ? Colors.white : Colors.black,
                  ),
                ),
                subtitle: member['role'] != null
                    ? Text(
                  member['role']!,
                  style: TextStyle(
                    color: widget.isDarkMode ? Colors.grey[400] : Colors.grey[700],
                  ),
                )
                    : null,
                onTap: () => showMemberDetails(member),
              ),
            );
          },
        ),
        SizedBox(height: 10), // Space between sections
      ],
    );
  }

// Helper function to assign different colors to different teams
  Color _getColorForTeam(String team) {
    switch (team) {
      case 'Admin Core':
        return Colors.purple;
      case 'Executive Core':
        return Colors.blue;
      case 'Aux Core':
        return Colors.teal;
      case 'Executive Members':
        return Colors.amber[700]!;
      default:
        return Colors.grey;
    }
  }



  void showMemberDetails(Map<String, String> member) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(member['name']!),
          content: Text('Year: ${member['year']}\nContact: ${member['contact']}'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Close'),
            ),
          ],
        );
      },
    );
  }
}