/**
 * Copyright (C), 2015-2019, XXX有限公司
 * FileName: Pay
 * Author:   891649
 * Date:     2019/8/4 10:36
 * Description:
 * History:
 * <author>          <time>          <version>          <desc>
 * 作者姓名           修改时间           版本号              描述
 */

package com.Pay.domian;

/**
 * 〈一句话功能简述〉<br> 
 * 〈〉
 *
 * @author 891649
 * @create 2019/8/4
 * @since 1.0.0
 */
public class Pay {
    private Long Id;   //ID
    private String UserId;//员工编号
    private String Username;//姓名
    private String Monad;//单位
    private String Salary;//应发工资
    private String BasePay;//基本工资
    private String PostWage;//岗位工资
    private String PerformanceBonus;//绩效奖金
    private String OvertimePay;//加班费
    private String BenefitBonus;//效益奖
    private String MealAllowance;//餐费津贴
    private String SeniorityAllowance;//工龄津贴
    private String MiddleNightShiftAllowance;//中晚班津贴
    private String HighTemperatureSubsidy;//高温津贴
    private String HouseAllowance;//住房津贴
    private String TransportationAllowance; //交通津贴
    private String HealthBenefits;//保健津贴
    private String SpecialPostSubsidy;//特殊岗位补贴
    private String SubsidyInPeakSeason;//旺季加班增产补贴
    private String AssessmentOfReward;//奖励考核
    private String BuckleMeals;//扣餐费
    private String Rent;//房租
    private String UtilitiesBuckle;//扣水电费
    private String SocialSecurityDeductions;//社保扣款
    private String DeductionOfHousing;//扣住房公积金
    private String OtherDeductions;//其他扣款
    private String Explain;//说明
    private String IncomeTax;//所得税
    private String TakeHomePpay;//实发工资

    public Long getId() {
        return Id;
    }

    public void setId(Long id) {
        Id = id;
    }

    public String getUserId() {
        return UserId;
    }

    public void setUserId(String userId) {
        UserId = userId;
    }

    public String getUsername() {
        return Username;
    }

    public void setUsername(String username) {
        Username = username;
    }

    public String getMonad() {
        return Monad;
    }

    public void setMonad(String monad) {
        Monad = monad;
    }

    public String getSalary() {
        return Salary;
    }

    public void setSalary(String salary) {
        Salary = salary;
    }

    public String getBasePay() {
        return BasePay;
    }

    public void setBasePay(String basePay) {
        BasePay = basePay;
    }

    public String getPostWage() {
        return PostWage;
    }

    public void setPostWage(String postWage) {
        PostWage = postWage;
    }

    public String getPerformanceBonus() {
        return PerformanceBonus;
    }

    public void setPerformanceBonus(String performanceBonus) {
        PerformanceBonus = performanceBonus;
    }

    public String getOvertimePay() {
        return OvertimePay;
    }

    public void setOvertimePay(String overtimePay) {
        OvertimePay = overtimePay;
    }

    public String getBenefitBonus() {
        return BenefitBonus;
    }

    public void setBenefitBonus(String benefitBonus) {
        BenefitBonus = benefitBonus;
    }

    public String getMealAllowance() {
        return MealAllowance;
    }

    public void setMealAllowance(String mealAllowance) {
        MealAllowance = mealAllowance;
    }

    public String getSeniorityAllowance() {
        return SeniorityAllowance;
    }

    public void setSeniorityAllowance(String seniorityAllowance) {
        SeniorityAllowance = seniorityAllowance;
    }

    public String getMiddleNightShiftAllowance() {
        return MiddleNightShiftAllowance;
    }

    public void setMiddleNightShiftAllowance(String middleNightShiftAllowance) {
        MiddleNightShiftAllowance = middleNightShiftAllowance;
    }

    public String getHighTemperatureSubsidy() {
        return HighTemperatureSubsidy;
    }

    public void setHighTemperatureSubsidy(String highTemperatureSubsidy) {
        HighTemperatureSubsidy = highTemperatureSubsidy;
    }

    public String getHouseAllowance() {
        return HouseAllowance;
    }

    public void setHouseAllowance(String houseAllowance) {
        HouseAllowance = houseAllowance;
    }

    public String getTransportationAllowance() {
        return TransportationAllowance;
    }

    public void setTransportationAllowance(String transportationAllowance) {
        TransportationAllowance = transportationAllowance;
    }

    public String getHealthBenefits() {
        return HealthBenefits;
    }

    public void setHealthBenefits(String healthBenefits) {
        HealthBenefits = healthBenefits;
    }

    public String getSpecialPostSubsidy() {
        return SpecialPostSubsidy;
    }

    public void setSpecialPostSubsidy(String specialPostSubsidy) {
        SpecialPostSubsidy = specialPostSubsidy;
    }

    public String getSubsidyInPeakSeason() {
        return SubsidyInPeakSeason;
    }

    public void setSubsidyInPeakSeason(String subsidyInPeakSeason) {
        SubsidyInPeakSeason = subsidyInPeakSeason;
    }

    public String getAssessmentOfReward() {
        return AssessmentOfReward;
    }

    public void setAssessmentOfReward(String assessmentOfReward) {
        AssessmentOfReward = assessmentOfReward;
    }

    public String getBuckleMeals() {
        return BuckleMeals;
    }

    public void setBuckleMeals(String buckleMeals) {
        BuckleMeals = buckleMeals;
    }

    public String getRent() {
        return Rent;
    }

    public void setRent(String rent) {
        Rent = rent;
    }

    public String getUtilitiesBuckle() {
        return UtilitiesBuckle;
    }

    public void setUtilitiesBuckle(String utilitiesBuckle) {
        UtilitiesBuckle = utilitiesBuckle;
    }

    public String getSocialSecurityDeductions() {
        return SocialSecurityDeductions;
    }

    public void setSocialSecurityDeductions(String socialSecurityDeductions) {
        SocialSecurityDeductions = socialSecurityDeductions;
    }

    public String getDeductionOfHousing() {
        return DeductionOfHousing;
    }

    public void setDeductionOfHousing(String deductionOfHousing) {
        DeductionOfHousing = deductionOfHousing;
    }

    public String getOtherDeductions() {
        return OtherDeductions;
    }

    public void setOtherDeductions(String otherDeductions) {
        OtherDeductions = otherDeductions;
    }

    public String getExplain() {
        return Explain;
    }

    public void setExplain(String explain) {
        Explain = explain;
    }

    public String getIncomeTax() {
        return IncomeTax;
    }

    public void setIncomeTax(String incomeTax) {
        IncomeTax = incomeTax;
    }

    public String getTakeHomePpay() {
        return TakeHomePpay;
    }

    public void setTakeHomePpay(String takeHomePpay) {
        TakeHomePpay = takeHomePpay;
    }
}