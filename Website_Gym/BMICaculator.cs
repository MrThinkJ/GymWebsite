using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Website_Gym
{
    public class BMICaculator
    {
        public static double CalculateBMI(double height, double weight)
        {
            return weight / (height * height);
        }

        public static string GetBMIAdvice(double bmi, string gender, string desire, int age)
        {
            string advice = "";

            // Lời khuyên dựa trên BMI
            if (bmi < 18.5)
            {
                advice = "You are underweight. You should eat more and focus on nutritious foods. Include protein, carbohydrates, and healthy fats in your diet.";
            }
            else if (bmi >= 18.5 && bmi < 24.9)
            {
                advice = "You have a normal weight. Maintain a balanced diet and regular exercise to stay healthy.";
            }
            else if (bmi >= 25 && bmi < 29.9)
            {
                advice = "You are overweight. Consider reducing your daily calorie intake and exercising regularly to lose weight. Limit foods high in sugar and fat.";
            }
            else if (bmi >= 30)
            {
                advice = "You are obese. You should change your lifestyle, exercise regularly, and maintain a healthy diet. Consult a nutritionist or doctor if necessary.";
            }

            // Điều chỉnh lời khuyên dựa trên mong muốn cá nhân
            if (desire.ToLower() == "lose weight")
            {
                advice += " Since you want to lose weight, focus on a calorie deficit and regular exercise.";
            }
            else if (desire.ToLower() == "gain muscle")
            {
                advice += " Since you want to gain muscle, focus on strength training and protein-rich foods.";
            }

            // Điều chỉnh lời khuyên dựa trên giới tính
            if (gender.ToLower() == "male")
            {
                advice += " As a male, make sure to include strength training in your routine.";
            }
            else if (gender.ToLower() == "female")
            {
                advice += " As a female, consider a mix of cardio and strength training exercises.";
            }

            // Điều chỉnh lời khuyên dựa trên độ tuổi
            if (age < 18)
            {
                advice += " Since you are young, ensure you get enough nutrients to support your growth.";
            }
            else if (age >= 18 && age < 65)
            {
                advice += " As an adult, focus on maintaining a balanced diet and regular exercise.";
            }
            else if (age >= 65)
            {
                advice += " As a senior, consider low-impact exercises and ensure you get enough calcium and vitamin D.";
            }

            return advice;
        }
    }
}