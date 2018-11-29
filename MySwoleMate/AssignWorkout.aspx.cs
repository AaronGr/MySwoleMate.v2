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
    public partial class AssignWorkout : System.Web.UI.Page
    {
        TraineeBLL traineeBLL = new TraineeBLL(ConfigurationManager.ConnectionStrings["MySwoleMateConnectionString"].ToString());
        WorkoutBLL workoutBLL = new WorkoutBLL(ConfigurationManager.ConnectionStrings["MySwoleMateConnectionString"].ToString());

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {          
                BindData();
                WorkoutDropList.Items.Insert(0, new ListItem("--Select--", "0"));
                WorkoutSelectedRequired.InitialValue = "0";
            }
        }

        // Assign WorkoutID of selected Workout Name in Drop Down List to current Trainee
        protected void WorkoutAssignButton_Click(object sender, EventArgs e)
        {
            traineeBLL.AssignWorkout(Convert.ToInt32(Request.QueryString["TraineeID"]), Convert.ToInt32(WorkoutDropList.SelectedValue));
            Response.Redirect("~/Trainees.aspx");
        }

        private void BindData()
        {
            // Store and Display Trainee's Name
            TraineeViewModel trainee = traineeBLL.GetTraineeById(Convert.ToInt32(Request.QueryString["TraineeID"]));
            TraineeName.Text = (trainee.FirstName + " " + trainee.LastName).ToUpper();

            // Retrieve all workouts
            List<WorkoutViewModel> workouts = workoutBLL.GetAllWorkouts();
     
            WorkoutDropList.DataSource = workouts;
            WorkoutDropList.DataBind();
        }

     
    }
}