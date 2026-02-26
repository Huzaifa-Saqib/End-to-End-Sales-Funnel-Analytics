# End-to-End Sales Funnel Analytics

## Overview
This project focuses on analyzing the **end-to-end sales funnel** to identify conversion bottlenecks, evaluate marketing effectiveness, and measure business profitability. The analysis tracks prospects from initial awareness to final deal closure while evaluating **conversion rates, CAC, LTV, ROI, and LTV:CAC ratio**. Interactive dashboards were built to generate actionable insights for improving marketing spend, sales efficiency, and overall revenue performance.

---

## Objectives
- Analyze drop-offs across each stage of the sales funnel  
- Evaluate performance by lead source, access channel, and region  
- Measure customer acquisition cost (CAC), lifetime value (LTV), and ROI  
- Identify the LTV:CAC ratio 
- Provide data-driven recommendations to optimize funnel performance  

---

## Data
- Prospect-level funnel data (Awareness → Deal Signed/Lost)  
- Lead source and access channel information  
- Regional data  
- Revenue generated per prospect  
- Total acquisition cost per prospect  
- Customer engagement data (days interacted, services purchased)  

---

## Analysis & Approach
1. Cleaned and validated funnel data using **SQL and Python**  
2. Calculated stage-wise prospect counts and funnel drop-off rates  
3. Computed conversion rates by lead source, channel, and region  
4. Derived **CAC, LTV, ROI, and LTV:CAC** metrics  
5. Built reports in **Power BI** for business insights  
6. Generated strategic recommendations for marketing and sales optimization  

---

## Key Findings
- Significant drop-off observed between **Proposal & Negotiation → Deal Signed (~47%)**, indicating a major closing bottleneck  
- Overall **LTV:CAC ratio is 0.94**, suggesting customer acquisition is currently highly unprofitable  
- Total ROI is (-6%), indicating costs slightly exceed revenue  
- Conversion rates vary across lead sources, highlighting opportunities for budget reallocation  
- Channel performance is relatively balanced, but optimization can improve efficiency  

---

## Recommendations
- **Fix late-stage conversion:** Improve sales closing strategies (follow-ups, pricing clarity, objection handling) to reduce the large final-stage drop-off  
- **Optimize acquisition spend:** Prioritize lead sources with higher conversion and ROI; reduce spend on underperforming channels  
- **Improve LTV:CAC to >3:** Focus on upselling, cross-selling, and customer retention to increase customer lifetime value  
- **Strengthen sales nurturing:** Implement automated nurturing for prospects stuck in middle funnel stages  
- **Regional strategy:** Double down on high-performing regions while diagnosing low-performing markets  

---

## Tools Used
- **SQL** — data aggregation and metric calculation  
- **Python (Pandas)** — data validation and data exploration  
- **Power BI** — reports and visualization  
