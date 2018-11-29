using System;

namespace MySwoleMate.Models
{
    public class WorkoutViewModel
    {
        public int WorkoutID { get; set; }
        public string WorkoutName { get; set; } //TODO UML, and other code
        public string Exercise1 { get; set; }
        public int Exercise1Sets { get; set; }
        public int Exercise1Reps { get; set; }
        public string DisplayExercise1 => DisplayExercise(this.Exercise2, this.Exercise2Sets, this.Exercise2Reps);
        public string Exercise2 { get; set; }
        public int Exercise2Sets { get; set; }
        public int Exercise2Reps { get; set; }
        public string DisplayExercise2 => DisplayExercise(this.Exercise2, this.Exercise2Sets, this.Exercise2Reps);
        public string Exercise3 { get; set; }
        public int Exercise3Sets { get; set; }
        public int Exercise3Reps { get; set; }
        public string DisplayExercise3 => DisplayExercise(this.Exercise3, this.Exercise3Sets, this.Exercise3Reps);
        public string Exercise4 { get; set; }
        public int Exercise4Sets { get; set; }
        public int Exercise4Reps { get; set; }
        public string DisplayExercise4 => DisplayExercise(this.Exercise4, this.Exercise4Sets, this.Exercise4Reps);
        public string Exercise5 { get; set; }
        public int Exercise5Sets { get; set; }
        public int Exercise5Reps { get; set; }
        public string DisplayExercise5 => DisplayExercise(this.Exercise5, this.Exercise5Sets, this.Exercise5Reps);

        private string DisplayExercise(string exercise, int sets, int reps)
        {
            return exercise + ": " + sets.ToString() + "x" + reps.ToString();
        }
    }

}
