using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySwoleMate.BLL;
using MySwoleMate.Models;
using System.Configuration;

namespace MySwoleMate
{
    public partial class ViewWorkout : System.Web.UI.Page
    {
        TraineeBLL traineeBLL = new TraineeBLL(ConfigurationManager.ConnectionStrings["MySwoleMateConnectionString"].ToString());
        WorkoutBLL workoutBLL = new WorkoutBLL(ConfigurationManager.ConnectionStrings["MySwoleMateConnectionString"].ToString());

        protected void Page_Load(object sender, EventArgs e)
        {
            BindData();
        }

        private void BindData()
        {
            TraineeViewModel trainee = traineeBLL.GetTraineeById(Convert.ToInt32(Request.QueryString["TraineeID"]));
            TraineeName.Text = (trainee.FirstName + " " + trainee.LastName).ToUpper(); ;

            AssignWorkOutLink.NavigateUrl += Request.QueryString["TraineeID"];

            // Check to see if the trainee has been assigned a workout plan.
            // Display the workout plan if they have or display message of missing workout
            if (traineeBLL.HasWorkoutAssigned(trainee.TraineeID))
            {
                WorkoutViewModel workout = workoutBLL.GetWorkoutById(trainee.WorkoutID);
                NoWorkoutHeader.Visible = false;
                WorkoutName.Text = workout.WorkoutName;
                DisplayExercise1.Text = workout.DisplayExercise1;
                DisplayExercise2.Text = workout.DisplayExercise2;
                DisplayExercise3.Text = workout.DisplayExercise3;
                DisplayExercise4.Text = workout.DisplayExercise4;
                DisplayExercise5.Text = workout.DisplayExercise5;
            }
            else
            {
                ExerciseList.Visible = false;
            }           
        }
    }

   
}