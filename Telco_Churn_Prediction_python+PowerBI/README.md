# Customer Churn Prediction Dashboard


![Dashboard Preview](https://github.com/aminm015/Power_BI/blob/main/Telco_Churn_Prediction_python%2BPowerBI/Telco_Customer_Prediction.gif)


## What’s This All About?

Ever wondered which customers might leave your business soon? This project is an end-to-end solution that helps you predict customer churn using machine learning, and then lets you explore those insights in a super-interactive Power BI dashboard. By digging into historical customer data, the goal is to spot patterns that hint at churn, so you can jump in and keep more customers around.

---

## Why Does Churn Matter?

Losing customers hurts—especially since getting new ones usually costs more than keeping the ones you have! This project is all about building a model that tells you which customers are most likely to leave, so you can act before it’s too late.

---

## About the Data

We use the Telco Customer Churn dataset from IBM (grab it on Kaggle). Here’s a quick look at what’s inside:
- **Demographics:** Gender, senior citizen, partner, dependents
- **Account Info:** How long they’ve been a customer, contract/payment types, billing, monthly/total charges
- **Services:** Phone, internet, streaming, security, backups, tech support, etc.
- **Target:** Whether they churned or not

---

## How We Did It (Step by Step)

**1. Grab the Data**
- Download the `WA_Fn-UseC_-Telco-Customer-Churn.csv` file from Kaggle.

**2. Load and Peek (in Jupyter Notebook)**
- Load the CSV with Pandas
- Use `.head()`, `.info()`, `.describe()`, and check for missing values
- Check the churn rate to see if the classes are balanced

**3. Prep and Tweak the Data**
- Convert weird empty strings in `TotalCharges` to numbers (fill blanks with 0)
- Drop `customerID` (not useful for predictions)
- Turn “Yes”/“No” and “Male”/“Female” into 1s and 0s
- Handle “No internet/phone service” as special cases
- One-hot encode things like contract, internet service, payment method
- Scale up tenure, monthly charges, and total charges so everything’s on the same playing field

**4. Train and Test the Model**
- Split into training (80%) and testing (20%) sets, keeping churn ratios intact
- Use `XGBoostClassifier` (great for this kind of thing)
- Check how the model does: accuracy, precision, recall, F1, ROC AUC, confusion matrix, classification report
- Save the model and scaler for later

**5. Make the Model Even Better**
- Tune hyperparameters with `GridSearchCV` and cross-validation, aiming for high recall
- Fight class imbalance using the `scale_pos_weight` trick in XGBoost
- Play with different probability thresholds to get the best trade-off between catching churners vs. false alarms
- Save your improved model

**6. Get Data Ready for Power BI**
- Apply all your preprocessing steps again to be consistent
- Use your model to predict churn probability and churn status for every customer
- Save all this to `telco_churn_predictions_for_powerbi.csv`—that’s what Power BI will use

**7. Build the Dashboard in Power BI**
- Import your CSV into Power BI Desktop
- In Power Query, turn 0s and 1s back into labels (like “Male” and “Female”) for easier filtering
- Design the dashboard:
    - **KPIs:** Total customers, actual churn, predicted churn, number of predicted churners
    - **Interactive filters:** Tenure, gender, internet, contract, payment method, senior status
    - **Visuals:** Churn probabilities, churn by contract/internet/payment, scatterplots of charges vs. tenure colored by churn
    - **Looks:** Clean formatting and layout

---

## Tech Stack

- **Python:** 
    - `pandas`, `scikit-learn`, `xgboost` for data/model stuff
    - `matplotlib`, `seaborn` for charts
    - `joblib` to save models
- **Power BI Desktop** for dashboarding

---

## How to Run This Yourself

**Python / Jupyter Notebook:**
1. Get the dataset from Kaggle
2. Make sure you have all the needed libraries:
    ```bash
    pip install pandas numpy scikit-learn xgboost matplotlib seaborn joblib
    ```
3. Open the notebook and run through the steps (1–6 above)
4. You’ll get a CSV file with churn predictions plus saved models

**Power BI:**
1. Download and install Power BI Desktop if you don’t have it
2. Import the CSV you just made
3. In Power Query, convert number flags back into readable categories
4. Build out your dashboard with KPIs, filters, and visuals
5. Play around and make it your own!

---

## What You’ll Learn from the Dashboard

- See actual vs. predicted churn rates at a glance
- Spot which customers are most at risk
- Break down churn by gender, contract, payment, tenure, etc.
- Explore how charges and tenure relate to churn
- Find patterns to help plan better customer retention strategies

---

## Where This Could Go Next

- **Automate Updates:** Hook the Python script into Power BI for regular refreshes
- **Real-Time Predictions:** Deploy the model as an API for live scoring
- **Smarter Features:** Add more complex features or time-series stuff if you have detailed data
- **Combine with CLTV:** Prioritize saving your most valuable customers
- **A/B Testing:** Try different retention strategies and track what works

---

I write this read me by copilot 
