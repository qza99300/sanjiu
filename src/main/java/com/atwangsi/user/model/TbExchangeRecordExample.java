package com.atwangsi.user.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public class TbExchangeRecordExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public TbExchangeRecordExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        protected void addCriterionForJDBCDate(String condition, Date value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            addCriterion(condition, new java.sql.Date(value.getTime()), property);
        }

        protected void addCriterionForJDBCDate(String condition, List<Date> values, String property) {
            if (values == null || values.size() == 0) {
                throw new RuntimeException("Value list for " + property + " cannot be null or empty");
            }
            List<java.sql.Date> dateList = new ArrayList<java.sql.Date>();
            Iterator<Date> iter = values.iterator();
            while (iter.hasNext()) {
                dateList.add(new java.sql.Date(iter.next().getTime()));
            }
            addCriterion(condition, dateList, property);
        }

        protected void addCriterionForJDBCDate(String condition, Date value1, Date value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            addCriterion(condition, new java.sql.Date(value1.getTime()), new java.sql.Date(value2.getTime()), property);
        }

        public Criteria andIdIsNull() {
            addCriterion("id is null");
            return (Criteria) this;
        }

        public Criteria andIdIsNotNull() {
            addCriterion("id is not null");
            return (Criteria) this;
        }

        public Criteria andIdEqualTo(Integer value) {
            addCriterion("id =", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotEqualTo(Integer value) {
            addCriterion("id <>", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThan(Integer value) {
            addCriterion("id >", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("id >=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThan(Integer value) {
            addCriterion("id <", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThanOrEqualTo(Integer value) {
            addCriterion("id <=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdIn(List<Integer> values) {
            addCriterion("id in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotIn(List<Integer> values) {
            addCriterion("id not in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdBetween(Integer value1, Integer value2) {
            addCriterion("id between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotBetween(Integer value1, Integer value2) {
            addCriterion("id not between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andUserIdIsNull() {
            addCriterion("user_id is null");
            return (Criteria) this;
        }

        public Criteria andUserIdIsNotNull() {
            addCriterion("user_id is not null");
            return (Criteria) this;
        }

        public Criteria andUserIdEqualTo(Integer value) {
            addCriterion("user_id =", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdNotEqualTo(Integer value) {
            addCriterion("user_id <>", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdGreaterThan(Integer value) {
            addCriterion("user_id >", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("user_id >=", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdLessThan(Integer value) {
            addCriterion("user_id <", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdLessThanOrEqualTo(Integer value) {
            addCriterion("user_id <=", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdIn(List<Integer> values) {
            addCriterion("user_id in", values, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdNotIn(List<Integer> values) {
            addCriterion("user_id not in", values, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdBetween(Integer value1, Integer value2) {
            addCriterion("user_id between", value1, value2, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdNotBetween(Integer value1, Integer value2) {
            addCriterion("user_id not between", value1, value2, "userId");
            return (Criteria) this;
        }

        public Criteria andConsigneeIdIsNull() {
            addCriterion("consignee_id is null");
            return (Criteria) this;
        }

        public Criteria andConsigneeIdIsNotNull() {
            addCriterion("consignee_id is not null");
            return (Criteria) this;
        }

        public Criteria andConsigneeIdEqualTo(Integer value) {
            addCriterion("consignee_id =", value, "consigneeId");
            return (Criteria) this;
        }

        public Criteria andConsigneeIdNotEqualTo(Integer value) {
            addCriterion("consignee_id <>", value, "consigneeId");
            return (Criteria) this;
        }

        public Criteria andConsigneeIdGreaterThan(Integer value) {
            addCriterion("consignee_id >", value, "consigneeId");
            return (Criteria) this;
        }

        public Criteria andConsigneeIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("consignee_id >=", value, "consigneeId");
            return (Criteria) this;
        }

        public Criteria andConsigneeIdLessThan(Integer value) {
            addCriterion("consignee_id <", value, "consigneeId");
            return (Criteria) this;
        }

        public Criteria andConsigneeIdLessThanOrEqualTo(Integer value) {
            addCriterion("consignee_id <=", value, "consigneeId");
            return (Criteria) this;
        }

        public Criteria andConsigneeIdIn(List<Integer> values) {
            addCriterion("consignee_id in", values, "consigneeId");
            return (Criteria) this;
        }

        public Criteria andConsigneeIdNotIn(List<Integer> values) {
            addCriterion("consignee_id not in", values, "consigneeId");
            return (Criteria) this;
        }

        public Criteria andConsigneeIdBetween(Integer value1, Integer value2) {
            addCriterion("consignee_id between", value1, value2, "consigneeId");
            return (Criteria) this;
        }

        public Criteria andConsigneeIdNotBetween(Integer value1, Integer value2) {
            addCriterion("consignee_id not between", value1, value2, "consigneeId");
            return (Criteria) this;
        }

        public Criteria andUserNameIsNull() {
            addCriterion("user_name is null");
            return (Criteria) this;
        }

        public Criteria andUserNameIsNotNull() {
            addCriterion("user_name is not null");
            return (Criteria) this;
        }

        public Criteria andUserNameEqualTo(String value) {
            addCriterion("user_name =", value, "userName");
            return (Criteria) this;
        }

        public Criteria andUserNameNotEqualTo(String value) {
            addCriterion("user_name <>", value, "userName");
            return (Criteria) this;
        }

        public Criteria andUserNameGreaterThan(String value) {
            addCriterion("user_name >", value, "userName");
            return (Criteria) this;
        }

        public Criteria andUserNameGreaterThanOrEqualTo(String value) {
            addCriterion("user_name >=", value, "userName");
            return (Criteria) this;
        }

        public Criteria andUserNameLessThan(String value) {
            addCriterion("user_name <", value, "userName");
            return (Criteria) this;
        }

        public Criteria andUserNameLessThanOrEqualTo(String value) {
            addCriterion("user_name <=", value, "userName");
            return (Criteria) this;
        }

        public Criteria andUserNameLike(String value) {
            addCriterion("user_name like", value, "userName");
            return (Criteria) this;
        }

        public Criteria andUserNameNotLike(String value) {
            addCriterion("user_name not like", value, "userName");
            return (Criteria) this;
        }

        public Criteria andUserNameIn(List<String> values) {
            addCriterion("user_name in", values, "userName");
            return (Criteria) this;
        }

        public Criteria andUserNameNotIn(List<String> values) {
            addCriterion("user_name not in", values, "userName");
            return (Criteria) this;
        }

        public Criteria andUserNameBetween(String value1, String value2) {
            addCriterion("user_name between", value1, value2, "userName");
            return (Criteria) this;
        }

        public Criteria andUserNameNotBetween(String value1, String value2) {
            addCriterion("user_name not between", value1, value2, "userName");
            return (Criteria) this;
        }

        public Criteria andProductIdIsNull() {
            addCriterion("product_id is null");
            return (Criteria) this;
        }

        public Criteria andProductIdIsNotNull() {
            addCriterion("product_id is not null");
            return (Criteria) this;
        }

        public Criteria andProductIdEqualTo(Integer value) {
            addCriterion("product_id =", value, "productId");
            return (Criteria) this;
        }

        public Criteria andProductIdNotEqualTo(Integer value) {
            addCriterion("product_id <>", value, "productId");
            return (Criteria) this;
        }

        public Criteria andProductIdGreaterThan(Integer value) {
            addCriterion("product_id >", value, "productId");
            return (Criteria) this;
        }

        public Criteria andProductIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("product_id >=", value, "productId");
            return (Criteria) this;
        }

        public Criteria andProductIdLessThan(Integer value) {
            addCriterion("product_id <", value, "productId");
            return (Criteria) this;
        }

        public Criteria andProductIdLessThanOrEqualTo(Integer value) {
            addCriterion("product_id <=", value, "productId");
            return (Criteria) this;
        }

        public Criteria andProductIdIn(List<Integer> values) {
            addCriterion("product_id in", values, "productId");
            return (Criteria) this;
        }

        public Criteria andProductIdNotIn(List<Integer> values) {
            addCriterion("product_id not in", values, "productId");
            return (Criteria) this;
        }

        public Criteria andProductIdBetween(Integer value1, Integer value2) {
            addCriterion("product_id between", value1, value2, "productId");
            return (Criteria) this;
        }

        public Criteria andProductIdNotBetween(Integer value1, Integer value2) {
            addCriterion("product_id not between", value1, value2, "productId");
            return (Criteria) this;
        }

        public Criteria andProductNameIsNull() {
            addCriterion("product_name is null");
            return (Criteria) this;
        }

        public Criteria andProductNameIsNotNull() {
            addCriterion("product_name is not null");
            return (Criteria) this;
        }

        public Criteria andProductNameEqualTo(String value) {
            addCriterion("product_name =", value, "productName");
            return (Criteria) this;
        }

        public Criteria andProductNameNotEqualTo(String value) {
            addCriterion("product_name <>", value, "productName");
            return (Criteria) this;
        }

        public Criteria andProductNameGreaterThan(String value) {
            addCriterion("product_name >", value, "productName");
            return (Criteria) this;
        }

        public Criteria andProductNameGreaterThanOrEqualTo(String value) {
            addCriterion("product_name >=", value, "productName");
            return (Criteria) this;
        }

        public Criteria andProductNameLessThan(String value) {
            addCriterion("product_name <", value, "productName");
            return (Criteria) this;
        }

        public Criteria andProductNameLessThanOrEqualTo(String value) {
            addCriterion("product_name <=", value, "productName");
            return (Criteria) this;
        }

        public Criteria andProductNameLike(String value) {
            addCriterion("product_name like", value, "productName");
            return (Criteria) this;
        }

        public Criteria andProductNameNotLike(String value) {
            addCriterion("product_name not like", value, "productName");
            return (Criteria) this;
        }

        public Criteria andProductNameIn(List<String> values) {
            addCriterion("product_name in", values, "productName");
            return (Criteria) this;
        }

        public Criteria andProductNameNotIn(List<String> values) {
            addCriterion("product_name not in", values, "productName");
            return (Criteria) this;
        }

        public Criteria andProductNameBetween(String value1, String value2) {
            addCriterion("product_name between", value1, value2, "productName");
            return (Criteria) this;
        }

        public Criteria andProductNameNotBetween(String value1, String value2) {
            addCriterion("product_name not between", value1, value2, "productName");
            return (Criteria) this;
        }

        public Criteria andProductIntegralIsNull() {
            addCriterion("product_integral is null");
            return (Criteria) this;
        }

        public Criteria andProductIntegralIsNotNull() {
            addCriterion("product_integral is not null");
            return (Criteria) this;
        }

        public Criteria andProductIntegralEqualTo(Integer value) {
            addCriterion("product_integral =", value, "productIntegral");
            return (Criteria) this;
        }

        public Criteria andProductIntegralNotEqualTo(Integer value) {
            addCriterion("product_integral <>", value, "productIntegral");
            return (Criteria) this;
        }

        public Criteria andProductIntegralGreaterThan(Integer value) {
            addCriterion("product_integral >", value, "productIntegral");
            return (Criteria) this;
        }

        public Criteria andProductIntegralGreaterThanOrEqualTo(Integer value) {
            addCriterion("product_integral >=", value, "productIntegral");
            return (Criteria) this;
        }

        public Criteria andProductIntegralLessThan(Integer value) {
            addCriterion("product_integral <", value, "productIntegral");
            return (Criteria) this;
        }

        public Criteria andProductIntegralLessThanOrEqualTo(Integer value) {
            addCriterion("product_integral <=", value, "productIntegral");
            return (Criteria) this;
        }

        public Criteria andProductIntegralIn(List<Integer> values) {
            addCriterion("product_integral in", values, "productIntegral");
            return (Criteria) this;
        }

        public Criteria andProductIntegralNotIn(List<Integer> values) {
            addCriterion("product_integral not in", values, "productIntegral");
            return (Criteria) this;
        }

        public Criteria andProductIntegralBetween(Integer value1, Integer value2) {
            addCriterion("product_integral between", value1, value2, "productIntegral");
            return (Criteria) this;
        }

        public Criteria andProductIntegralNotBetween(Integer value1, Integer value2) {
            addCriterion("product_integral not between", value1, value2, "productIntegral");
            return (Criteria) this;
        }

        public Criteria andConvertStatusIsNull() {
            addCriterion("convert_status is null");
            return (Criteria) this;
        }

        public Criteria andConvertStatusIsNotNull() {
            addCriterion("convert_status is not null");
            return (Criteria) this;
        }

        public Criteria andConvertStatusEqualTo(Integer value) {
            addCriterion("convert_status =", value, "convertStatus");
            return (Criteria) this;
        }

        public Criteria andConvertStatusNotEqualTo(Integer value) {
            addCriterion("convert_status <>", value, "convertStatus");
            return (Criteria) this;
        }

        public Criteria andConvertStatusGreaterThan(Integer value) {
            addCriterion("convert_status >", value, "convertStatus");
            return (Criteria) this;
        }

        public Criteria andConvertStatusGreaterThanOrEqualTo(Integer value) {
            addCriterion("convert_status >=", value, "convertStatus");
            return (Criteria) this;
        }

        public Criteria andConvertStatusLessThan(Integer value) {
            addCriterion("convert_status <", value, "convertStatus");
            return (Criteria) this;
        }

        public Criteria andConvertStatusLessThanOrEqualTo(Integer value) {
            addCriterion("convert_status <=", value, "convertStatus");
            return (Criteria) this;
        }

        public Criteria andConvertStatusIn(List<Integer> values) {
            addCriterion("convert_status in", values, "convertStatus");
            return (Criteria) this;
        }

        public Criteria andConvertStatusNotIn(List<Integer> values) {
            addCriterion("convert_status not in", values, "convertStatus");
            return (Criteria) this;
        }

        public Criteria andConvertStatusBetween(Integer value1, Integer value2) {
            addCriterion("convert_status between", value1, value2, "convertStatus");
            return (Criteria) this;
        }

        public Criteria andConvertStatusNotBetween(Integer value1, Integer value2) {
            addCriterion("convert_status not between", value1, value2, "convertStatus");
            return (Criteria) this;
        }

        public Criteria andCourierintegerIsNull() {
            addCriterion("courierinteger is null");
            return (Criteria) this;
        }

        public Criteria andCourierintegerIsNotNull() {
            addCriterion("courierinteger is not null");
            return (Criteria) this;
        }

        public Criteria andCourierintegerEqualTo(String value) {
            addCriterion("courierinteger =", value, "courierinteger");
            return (Criteria) this;
        }

        public Criteria andCourierintegerNotEqualTo(String value) {
            addCriterion("courierinteger <>", value, "courierinteger");
            return (Criteria) this;
        }

        public Criteria andCourierintegerGreaterThan(String value) {
            addCriterion("courierinteger >", value, "courierinteger");
            return (Criteria) this;
        }

        public Criteria andCourierintegerGreaterThanOrEqualTo(String value) {
            addCriterion("courierinteger >=", value, "courierinteger");
            return (Criteria) this;
        }

        public Criteria andCourierintegerLessThan(String value) {
            addCriterion("courierinteger <", value, "courierinteger");
            return (Criteria) this;
        }

        public Criteria andCourierintegerLessThanOrEqualTo(String value) {
            addCriterion("courierinteger <=", value, "courierinteger");
            return (Criteria) this;
        }

        public Criteria andCourierintegerLike(String value) {
            addCriterion("courierinteger like", value, "courierinteger");
            return (Criteria) this;
        }

        public Criteria andCourierintegerNotLike(String value) {
            addCriterion("courierinteger not like", value, "courierinteger");
            return (Criteria) this;
        }

        public Criteria andCourierintegerIn(List<String> values) {
            addCriterion("courierinteger in", values, "courierinteger");
            return (Criteria) this;
        }

        public Criteria andCourierintegerNotIn(List<String> values) {
            addCriterion("courierinteger not in", values, "courierinteger");
            return (Criteria) this;
        }

        public Criteria andCourierintegerBetween(String value1, String value2) {
            addCriterion("courierinteger between", value1, value2, "courierinteger");
            return (Criteria) this;
        }

        public Criteria andCourierintegerNotBetween(String value1, String value2) {
            addCriterion("courierinteger not between", value1, value2, "courierinteger");
            return (Criteria) this;
        }

        public Criteria andLogisticsStatusIsNull() {
            addCriterion("logistics_status is null");
            return (Criteria) this;
        }

        public Criteria andLogisticsStatusIsNotNull() {
            addCriterion("logistics_status is not null");
            return (Criteria) this;
        }

        public Criteria andLogisticsStatusEqualTo(String value) {
            addCriterion("logistics_status =", value, "logisticsStatus");
            return (Criteria) this;
        }

        public Criteria andLogisticsStatusNotEqualTo(String value) {
            addCriterion("logistics_status <>", value, "logisticsStatus");
            return (Criteria) this;
        }

        public Criteria andLogisticsStatusGreaterThan(String value) {
            addCriterion("logistics_status >", value, "logisticsStatus");
            return (Criteria) this;
        }

        public Criteria andLogisticsStatusGreaterThanOrEqualTo(String value) {
            addCriterion("logistics_status >=", value, "logisticsStatus");
            return (Criteria) this;
        }

        public Criteria andLogisticsStatusLessThan(String value) {
            addCriterion("logistics_status <", value, "logisticsStatus");
            return (Criteria) this;
        }

        public Criteria andLogisticsStatusLessThanOrEqualTo(String value) {
            addCriterion("logistics_status <=", value, "logisticsStatus");
            return (Criteria) this;
        }

        public Criteria andLogisticsStatusLike(String value) {
            addCriterion("logistics_status like", value, "logisticsStatus");
            return (Criteria) this;
        }

        public Criteria andLogisticsStatusNotLike(String value) {
            addCriterion("logistics_status not like", value, "logisticsStatus");
            return (Criteria) this;
        }

        public Criteria andLogisticsStatusIn(List<String> values) {
            addCriterion("logistics_status in", values, "logisticsStatus");
            return (Criteria) this;
        }

        public Criteria andLogisticsStatusNotIn(List<String> values) {
            addCriterion("logistics_status not in", values, "logisticsStatus");
            return (Criteria) this;
        }

        public Criteria andLogisticsStatusBetween(String value1, String value2) {
            addCriterion("logistics_status between", value1, value2, "logisticsStatus");
            return (Criteria) this;
        }

        public Criteria andLogisticsStatusNotBetween(String value1, String value2) {
            addCriterion("logistics_status not between", value1, value2, "logisticsStatus");
            return (Criteria) this;
        }

        public Criteria andCreateDateIsNull() {
            addCriterion("create_date is null");
            return (Criteria) this;
        }

        public Criteria andCreateDateIsNotNull() {
            addCriterion("create_date is not null");
            return (Criteria) this;
        }

        public Criteria andCreateDateEqualTo(Date value) {
            addCriterionForJDBCDate("create_date =", value, "createDate");
            return (Criteria) this;
        }

        public Criteria andCreateDateNotEqualTo(Date value) {
            addCriterionForJDBCDate("create_date <>", value, "createDate");
            return (Criteria) this;
        }

        public Criteria andCreateDateGreaterThan(Date value) {
            addCriterionForJDBCDate("create_date >", value, "createDate");
            return (Criteria) this;
        }

        public Criteria andCreateDateGreaterThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("create_date >=", value, "createDate");
            return (Criteria) this;
        }

        public Criteria andCreateDateLessThan(Date value) {
            addCriterionForJDBCDate("create_date <", value, "createDate");
            return (Criteria) this;
        }

        public Criteria andCreateDateLessThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("create_date <=", value, "createDate");
            return (Criteria) this;
        }

        public Criteria andCreateDateIn(List<Date> values) {
            addCriterionForJDBCDate("create_date in", values, "createDate");
            return (Criteria) this;
        }

        public Criteria andCreateDateNotIn(List<Date> values) {
            addCriterionForJDBCDate("create_date not in", values, "createDate");
            return (Criteria) this;
        }

        public Criteria andCreateDateBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("create_date between", value1, value2, "createDate");
            return (Criteria) this;
        }

        public Criteria andCreateDateNotBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("create_date not between", value1, value2, "createDate");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}