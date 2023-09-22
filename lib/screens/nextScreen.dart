


import 'package:daily_fitness_app/screens/thirdScreen.dart';
import 'package:flutter/material.dart';
class NextScreen extends StatefulWidget {
  final String gettitle, getdesc, getimage, getnumber;



  NextScreen({
    Key? key,
    required this.gettitle,
    required this.getdesc,
    required this.getimage,
    required this.getnumber,
  }) : super(key: key);

  @override
  State<NextScreen> createState() => _NextScreenState();
}

class _NextScreenState extends State<NextScreen> {


  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;


    List<List<String>> names = [
      ["Push-ups", "Bicep Curls", "Tricep Dips", "Pull-ups","Bench Press","Overhead Press","Lateral Raises","Push Press","Seated Rows","Lat Pulldowns"],
      ["Squats","Lunges","Deadlifts","Leg Press","Step-Ups","Romanian Deadlifts","Calf Raises","Glute Bridges","Leg Curls","Box Jumps"],
      ["Push-Ups","Dumbbell Bench Press","Incline Push-Ups","Wall Push-Ups","Dumbbell Flyes","Chest Squeezes","Machine Chest Press","Resistance Band Chest Press","Push-Up Modifications","Chest Stretch"],
      ['Barbell Bench Press', 'Dumbbell Pullovers', "Chest Dips", 'Incline Dumbbell Press',"Cable Crossovers",'Decline Bench Press','Diamond Push-Ups','Chest Flyes','Push-Up Variations','Chest Press Machine'],
      ["Ring Dips", "Plyometric Push-Ups", "Weighted Chest Dips", "Isometric Pause Bench Press","Chest Flye Drop Sets","Single-Arm Push-Ups","Spiderman Push-Ups","Incline Plyometric Push-Ups","Guillotine Press","Chest to Bar Pull-Ups"],
      ['Crunches', 'Leg Raises', "Planks", 'Bicycle Crunches',"Sit-Ups","Russian Twists","Flutter Kicks","Seated Leg Tucks","Standing Side Bends","Plank Hip Dips"],
      ["Hanging Leg Raises", "Mountain Climbers", "Plank Variations", "Russian Twist with Weight","V-Ups","Medicine Ball Slams","Dragon Flags"],
      ['Dragon Flags','Ab Wheel Rollouts', 'Human Flags', "Windshield Wipers on Rings","Hanging Window Wipers",],
      ['Bicep Curls', "Tricep Dips", 'Push-Ups',"Dumbbell Hammer Curls","Plank Shoulder Taps","Diamond Push-Ups"],
      ["Chin-Ups", "Tricep Pushdowns", "Barbell Bicep Curls", "Diamond Push-Ups","Hammer Curls","Cable Bicep Curls"],
      ['Weighted Chin-Ups', 'Tricep Dips with Chains', "Barbell 21s", 'Skull Crusher Drop Sets',"One-Arm Pull-Ups","Zottman Curls"],
      ["Bodyweight Squats", "Lunges", "Wall Sits", "Step-Ups","Calf Raises","Glute Bridges"],
      ['Barbell Squats', 'Deadlifts', "Dumbbell Lunges", 'Leg Press (Machine)',"Romanian Deadlifts","Sumo Squats"],
      ["Barbell Front Squats", "Barbell Hack Squats", "Bulgarian Split Squats with Barbell", "Pistol Squats","Barbell Step-Ups","Sissy Squats"],

    ];

    List<List<String>> images = [
      [
        'assets/images/upper/push_up.gif',
        'assets/images/upper/bicep_curls_upper.gif',
        'assets/images/upper/Triceps-Dips_upper.gif',
        'assets/images/upper/pull_up_upper.gif',
        'assets/images/upper/Bench_Press_upper.gif',
        'assets/images/upper/overhead_press_upper.gif',
        'assets/images/upper/Lateral_Raises_upper.gif',
        'assets/images/upper/push-press_upper.gif',
        'assets/images/upper/seated_row_upper.gif',
        'assets/images/upper/Lat-Pulldown_upper.gif',

      ],
      [
        'assets/images/lower/Squats_lower.gif',
        'assets/images/lower/Lunges_lower.gif',
        'assets/images/lower/Deadlifts_lower.gif',
        'assets/images/lower/leg_press_lower.gif',
        'assets/images/lower/stepup_lower.gif',
        'assets/images/lower/Romanian_Deadlifts_lower.gif',
        'assets/images/lower/Calf_Raises_lower.gif',
        'assets/images/lower/Glute_Bridges_lower.gif',
        'assets/images/lower/leg_curl_lower.gif',
        'assets/images/lower/box-jump_lower.gif',

      ],
      [
        'assets/images/upper/push_up.gif',
        'assets/images/chest_beg/Dumbbell-Press_chest.gif',
        'assets/images/chest_beg/Incline_Push-Ups_chest.gif',
        'assets/images/leg_beg/wall_sits_leg.gif',
        'assets/images/chest_beg/Dumbbell-Fly_chest.gif',
        'assets/images/chest_beg/chest_squeezes_chest.gif',
        'assets/images/chest_beg/Chest-Press-Machine_chest.gif',
        'assets/images/chest_beg/Resistance-Band-Alternating-Chest-Fly_chest.gif',
        'assets/images/chest_beg/modified_pushup_chest.gif',
        'assets/images/chest_beg/chest_stretch_chest.gif',

      ],
      [
        'assets/images/chest_inter/barbell-bench-press_chest2.gif',
        'assets/images/chest_inter/Dumbbell-Pullover_chest2.gif',
        'assets/images/chest_inter/Chest-Dips_chest2.gif',
        'assets/images/chest_inter/Incline-Dumbbell-Press_chest2.gif',
        'assets/images/chest_inter/High-Cable-Crossover_chest2.gif',
        'assets/images/chest_inter/Decline-Dumbbell-Press_chest2.gif',
        'assets/images/chest_inter/Diamond-Push-up_chest2.gif',
        'assets/images/chest_inter/Dumbbell-Fly_chest2.gif',
        'assets/images/chest_inter/push_up_variation_chest2.gif',
        'assets/images/chest_inter/Chest-Press-Machine_chest2.gif',
      ],
      [
        'assets/images/chest_adva/Ring-Dips_chest3.gif',
        'assets/images/chest_adva/plyometric-push-ups_chest3.gif',
        'assets/images/chest_adva/Triceps-Dips_chest3.gif',
        'assets/images/chest_adva/isometric_pause_bench_press_chest3.gif',
        'assets/images/chest_adva/chest_flye_drop_set_chest3.gif',
        'assets/images/chest_adva/single_arm_pushup_chest3.gif',
        'assets/images/chest_adva/diamond-push-ups-benefits_chest3.gif',
        'assets/images/chest_adva/Cross-Body-Push-up_Plyometric_chest3.gif',
        'assets/images/chest_adva/Incline-Barbell-Bench-Press_chest3.gif',
        'assets/images/chest_adva/chest_bar_pull_up_chest3.gif',

      ],
      [
        'assets/images/abs_beg/Crunch_abs.gif',
        'assets/images/abs_beg/leg_raises_abs.gif',
        'assets/images/abs_beg/body-saw-plank_abs.gif',
        'assets/images/abs_beg/bicycle_crunches_abs.gif',
        'assets/images/abs_beg/sit_up_abs.gif',
        'assets/images/abs_beg/Russian-Twist_abs.gif',
        'assets/images/abs_beg/Flutter-Kicks_abs.gif',
        'assets/images/abs_beg/seated_leg_truck_abs.gif',
        'assets/images/abs_beg/Standing-Side-Bend-Stretch_abs.gif',
        'assets/images/abs_beg/plank-hip-dips_abs.gif',
      ],
      [
        'assets/images/abs_inter/Hanging-Leg-Raises_abs2.gif',
        'assets/images/abs_inter/mountainclimber_abs2.gif',
        'assets/images/abs_inter/plank_variation_abs2.gif',
        'assets/images/abs_inter/Russian-Twist_with_weight_abs2.gif',
        'assets/images/abs_inter/v_ups_abs2.gif',
        'assets/images/abs_inter/Medicine-ball-Slam_abs2.gif',
        'assets/images/abs_inter/dragon_flag_abs2.gif',
      ],
      [
        'assets/images/abs_adva/dragon_flag_abs3.gif',
        'assets/images/abs_adva/Ab-Wheel-Rollout_abs3.gif',
        'assets/images/abs_adva/windsheild_wipers_abs3.gif',
        'assets/images/abs_adva/Human-Flag_abs3.gif',
        'assets/images/abs_inter/plank_variation_abs2.gif',
      ],
      [
        'assets/images/arm_beg/Biceps-Curl_arm.gif',
        'assets/images/arm_beg/Triceps-Dips_arm.gif',
        'assets/images/arm_beg/close-grip-push-up_arm.gif',
        'assets/images/arm_beg/Hammer-Curl_arm.gif',
        'assets/images/arm_beg/Shoulder-Tap-Push-up_arm.gif',
        'assets/images/arm_beg/Diamond-Push-up_arm.gif',
      ],
      [
        'assets/images/arm_inter/chin_ups_arm2.gif',
        'assets/images/arm_inter/tricep_Pushdown_arm2.gif',
        'assets/images/arm_inter/Barbell-bicep_Curl_arm2.gif',
        'assets/images/arm_inter/daimond-Push-Up_arm2.gif',
        'assets/images/arm_inter/Hammer-Curl_arm2.gif',
        'assets/images/arm_inter/cable-bicep_curls_arm2.gif',

      ],
      [
        'assets/images/arm_adva/weight_chin_ups_arm3.gif',
        'assets/images/arm_adva/Triceps-Dips_arm3.gif',
        'assets/images/arm_adva/barbell_21s_arm3.gif',
        'assets/images/arm_adva/Band-Skull-Crusher_arm3.gif',
        'assets/images/arm_adva/one_arm_pull_ups_arm3.gif',
        'assets/images/arm_adva/curl-zottman_arm3.gif',
      ],
      [
        'assets/images/leg_beg/bodyweight-squat_leg.gif',
        'assets/images/leg_beg/Lunge_leg.gif',
        'assets/images/leg_beg/wall_sits_leg.gif',
        'assets/images/leg_beg/step-up_leg.gif',
        'assets/images/leg_beg/Calf-Raise_leg.gif',
        'assets/images/leg_beg/glute-bridge_leg.gif',
      ],
      [
        'assets/images/leg_inter/Barbell-squat_leg2.gif',
        'assets/images/leg_inter/barbell-deadlift-movement_leg2.gif',
        'assets/images/leg_inter/dumbbell-lunges_leg2.gif',
        'assets/images/leg_inter/leg_press_machine_leg2.gif',
        'assets/images/leg_inter/romanian_Barbell-Deadlift_leg2.gif',
        'assets/images/leg_inter/dumbbell-sumo-squat_leg2.gif',
      ],
      [
        'assets/images/leg_adva/front-squat_leg3.gif',
        'assets/images/leg_adva/barbell-hack_squat_leg3.gif',
        'assets/images/leg_adva/split_squat_with_barbell_leg3.gif',
        'assets/images/leg_adva/pistol-squats_leg3.gif',
        'assets/images/leg_adva/barbell_step_up_leg3.gif',
        'assets/images/leg_adva/sissy_squat_leg3.gif',

      ],

    ];

    List<List<String>> descriptions = [
      ["A classic bodyweight exercise that targets chest, shoulders, and triceps for overall upper body strength.",
        "Isolate and strengthen the biceps by lifting weights with a controlled, curling motion.",
        " Focus on triceps with this bodyweight exercise, using a bench or parallel bars to dip down.",
        "An effective back and bicep workout, using your body weight to lift yourself up on a horizontal bar.",
        " A compound exercise that builds chest and triceps strength by pressing a barbell or dumbbells.",
        "Targets the shoulders and upper chest with a weightlifting movement above the head.",
        "Strengthen shoulder muscles by lifting dumbbells to the sides, parallel to the ground.",
        "Combines leg drive and shoulder press to increase power and build shoulder and triceps strength.",
        " Work on the upper back and biceps by pulling a cable towards your torso while seated.",
        " Develop a strong back and biceps by pulling a cable attachment down to your chest."


      ],
      ["A fundamental lower body exercise, targeting quadriceps, hamstrings, and glutes, promoting overall leg strength.",
        "Step forward or backward to work on leg strength, balance, and coordination, engaging multiple muscle groups.",
        " Lift a barbell from the ground to build powerful hamstrings, glutes, lower back, and grip strength.",
        " Use a machine to safely target quadriceps, hamstrings, and glutes with controlled leg extensions.",
        " Step onto a bench or platform to enhance quadriceps, hamstrings, and glutes strength and endurance.",
        "Hinge at the hips and lower the barbell, focusing on hamstrings and lower back activation.",
        "Isolate and strengthen the calf muscles by raising your heels, using bodyweight or weights.",
        "Lay on your back and lift your hips to strengthen and tone the glutes and lower back.",
        "Work on hamstring strength using a machine that involves curling the legs toward the buttocks.",
        " Plyometric exercise involving explosive jumping onto a box, improving leg power and agility."

      ],
      [" A foundational exercise that strengthens chest, shoulders, and triceps using your body weight.",
        " Lie on a bench and press dumbbells upward for chest muscle development.",
        "Elevated hands target upper chest while performing push-ups, perfect for beginners.",
        "A gentle introduction to push-ups, using a wall for added support and stability.",
        " Isolate chest muscles by lying on a bench and opening your arms wide with dumbbells.",
        " Use a stability ball to perform gentle squeezes, targeting chest muscles.",
        " Beginner-friendly equipment helps build chest strength with guided movements.",
        " Mimic bench press motion with resistance bands for a beginner-friendly workout.",
        "Start with knee push-ups or incline variations to gradually build chest strength.",
        "Relax and stretch chest muscles by clasping your hands behind your back and gently pulling."
      ],
      ["Lift a barbell to build chest strength and mass, perfect for intermediates seeking progression.",
        "Engage chest and serratus anterior muscles with a controlled motion, using dumbbells on a bench.",
        " Advance with bodyweight dips, emphasizing chest and triceps strength on parallel bars.",
        " Target upper chest with incline bench and dumbbells for well-rounded chest development.",
        " Isolate chest muscles using cable resistance, emphasizing the squeezing motion at the center.",
        "Strengthen lower chest by bench pressing on a decline bench with a barbell or dumbbells.",
        " Challenge chest and triceps with a close-hand push-up variation for muscle definition.",
        "Isolate pectoral muscles with controlled dumbbell or machine fly movements.",
        " Progress with one-arm, clap, or weighted push-ups to intensify chest workouts.",
        " Utilize resistance machines for precise chest targeting and controlled repetitions."
      ],
      ["Advanced bodyweight exercise on gymnastic rings to challenge chest and triceps strength and stability.",
        "Explosive push-up variations like clapping or plyo-ball to boost chest power and explosiveness.",
        " Add weight for resistance, increasing intensity and muscle engagement in chest and triceps.",
        "Hold the bar at different positions mid-rep for increased time under tension.",
        "Perform drop sets with dumbbell flyes, decreasing weight for maximum muscle fatigue.",
        "Challenge chest and core by performing push-ups with one arm, focusing on stability.",
        "Combine push-ups with knee-to-elbow movement for an advanced chest and core workout.",
        " Explosive push-ups on an incline to target upper chest and explosive power.",
        "Extreme incline bench press for upper chest focus; requires advanced technique and strength.",
        " Elevate pull-up bar to chest level, emphasizing upper chest and back development."
      ],
      ["Basic ab exercise to strengthen the rectus abdominis, involving a controlled lift of your shoulders.",
        " Target lower abs by lifting legs off the ground while lying flat or on a bench.",
        "Build core stability by holding a push-up position with a straight body and engaged abs.",
        "Engage obliques and core by mimicking a cycling motion while performing crunches.",
        "Strengthen the core by sitting up from a lying position, engaging rectus abdominis.",
        " Work oblique muscles by twisting torso from side to side while seated or holding weight.",
        "Engage lower abs by fluttering legs up and down while lying flat.",
        " Sitting on the edge of a bench, tuck knees to chest to engage lower abs.",
        "Strengthen obliques by bending sideways while holding a dumbbell or weight plate.",
        " Modify planks by dipping hips side to side, targeting obliques and core stability."

      ],
      ["Suspend from a bar and lift legs, targeting lower abs and improving core strength.",
        "Engage core and cardio with rapid knee-to-chest movements from a plank position.",
        "Incorporate side planks, forearm planks, and high planks for total core activation.",
        "Amp up oblique work by twisting with a weight, seated or elevated.",
        "Enhance core strength by lifting legs and upper body simultaneously while lying flat.",
        "Engage core and power with explosive overhead slams using a medicine ball.",
        " Lie on a bench, raise legs, and lower them slowly, working the entire core."],
      [  "A gravity-defying core exercise where you suspend from a bench and raise and lower your body.",
        "Use an ab wheel to extend and retract, challenging your core's stability and strength.",
        "An incredible feat of strength, holding your body horizontally between vertical bars or on a pole.",
        "Combine L-sit and handstand for an advanced gymnastic core and shoulder workout.",
        "Hang from a bar and twist legs side to side, targeting obliques and grip strength.",
      ],
      [ "Lift dumbbells to work biceps, the front arm muscles, and build overall arm strength.",
        "Strengthen triceps, the back arm muscles, using parallel bars or a sturdy surface.",
        "A versatile exercise that engages both biceps and triceps while also working the chest and shoulders.",
        "Target biceps and forearms with a hammer-like grip on dumbbells.",
        "In plank position, tap shoulders alternately to engage triceps and shoulder stability.",
        "A variation of push-ups focusing on triceps, chest, and shoulder muscles.",
      ],
      [ "Engage biceps and back muscles with an underhand grip while lifting your body.",
        "Use a cable machine to isolate and strengthen triceps effectively.",
        "Lift a barbell for a compound bicep exercise, enhancing size and strength.",
        "Advanced push-up targeting triceps, chest, and shoulder muscles with a diamond hand placement.",
        "Build biceps and forearms with a neutral grip, using dumbbells or a barbell.",
        " Perform curls using a cable machine for consistent resistance and muscle engagement."
      ],
      ["Attach weight for added resistance while performing chin-ups to increase bicep and back strength.",
        " Elevate dips with added chains for progressive tricep muscle engagement and growth.",
        " A challenging bicep curl variation that combines partial reps for complete bicep muscle stimulation.",
        " Execute skull crushers with decreasing weights to exhaust triceps for hypertrophy.",
        " Master the art of single-arm pull-ups, demanding exceptional bicep and back strength.",
        " A versatile curl variation involving supination and pronation, targeting biceps and forearms.",
      ],
      [" Strengthen leg muscles with this fundamental squat exercise, using only your body weight.",
        " Step forward or backward to work on leg strength, balance, and coordination, engaging multiple muscle groups.",
        " Build leg endurance by holding a seated position against a wall for a specific duration.",
        " Step onto a bench or platform to enhance quadriceps, hamstrings, and glutes strength and endurance.",
        " Isolate and strengthen calf muscles by raising your heels, using bodyweight or weights.",
        " Lay on your back and lift your hips to strengthen and tone the glutes and lower back.",
      ],
      [" A compound exercise using a barbell to strengthen and develop quadriceps, hamstrings, and glutes.",
        " Lift heavy weights from the ground, targeting hamstrings, glutes, lower back, and overall leg strength.",
        " Advance lunges with dumbbells to improve leg strength, balance, and muscle definition.",
        " Progress on the leg press machine to build quad, hamstring, and glute strength.",
        "Isolate hamstrings and lower back with a controlled bending and straightening motion.",
        " Wider stance squats targeting inner thighs, hamstrings, and glutes with a barbell or dumbbell.",
      ],
      ["An advanced squat variation placing the barbell in front, emphasizing quads and core stability.",
        " Target quads, hamstrings, and glutes with this challenging barbell squat variation.",
        " Elevate split squats by adding a barbell for increased intensity and leg development.",
        " Master one-leg squats for unparalleled lower body strength, balance, and mobility.",
        " Step onto a bench or platform with a loaded barbell, demanding leg and glute strength.",
        " An advanced quad isolation exercise that involves leaning back while performing squats.",
      ],

    ];



    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink.shade800,
        title: Text(widget.gettitle),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Card(
              elevation: 8,
              child: Stack(
                children: [
                  SizedBox(
                    width: width,
                    height: height * 0.3,
                    child: Image.asset(
                      widget.getimage,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: height * 0.02,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: height * 0.02, vertical: width * 0.002),
                          child: Text(
                            widget.gettitle,
                            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.normal, color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: height * 0.02, vertical: width * 0.001),
                          child: Text(
                            widget.getdesc,
                            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.normal, color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: height * 0.02, vertical: width * 0.01),
                          child: const Row(
                            children: [
                              Icon(Icons.flash_on_outlined, color: Colors.blue),
                              Icon(Icons.flash_on_outlined, color: Colors.blue),
                              Icon(Icons.flash_on_outlined, color: Colors.white),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),


            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: names[int.parse(widget.getnumber) - 1].length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ThirdScreen(
                            lasttitle: names[int.parse(widget.getnumber) - 1][index],
                            lastdesc: descriptions[int.parse(widget.getnumber) - 1][index],
                            lastimage: images[int.parse(widget.getnumber) - 1][index],
                          ),
                        ),
                      );
                    },
                    leading: SizedBox(
                      height: height * 0.3,
                      width: width * 0.2,
                      child: Image.asset(
                        images[int.parse(widget.getnumber) - 1][index],
                        fit: BoxFit.cover,
                      ),
                    ),
                    title: Text(names[int.parse(widget.getnumber) - 1][index], style: TextStyle(fontSize:18,fontWeight: FontWeight.w500,color:Colors.black),),
                    subtitle: Text(descriptions[int.parse(widget.getnumber) - 1][index],),

                    trailing:  Icon(Icons.arrow_forward_outlined,color:Colors.black),

                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}