package com.common.system.entity;

public class gasHistoryLog {
    private String id;
    private String meter_id;
    private String report_type;
    private int  length;
    private int  sn;
    private String device_addr;
    private String device_type;
    private String corporation_code;
    private String user_addr;
    private double remainded_gas;
    private double accumulative_gas;
    private double sum_gas;
    private int pay_num;
    private int preinstall_modify_num;
    private int current_modify_num;
    private double current_unit_price;
    private double current_gas;
    private double accumulative_use_gas;
    private String main_circuit;
    private String auxiliary_circuit;
    private String valve_status;
    private String switch_status;
    private String pulse_status;
    private String overcurrent_status;
    private String leakage_status;
    private String low_pressure;
    private String breakage_status;
    private String data_storage;
    private String open_valve;
    private String close_valve;
    private String backout_meter;
    private String micro_leakage;
    private String lost_contact;
    private String nouse_gas;
    private int one_day_gas;
    private int two_day_gas;
    private int three_day_gas;
    private int four_day_gas;
    private int five_day_gas;
    private int six_day_gas;
    private int one_month_gas;
    private int two_month_gas;
    private double settlement_date_gas;
    private double main_circuit_voltage;
    private double auxiliary_circuit_voltage;
    private String version;
    private int signal_intensity;
    private String effective_date;
    private double cur_step1_vol;
    private double cur_step2_vol;
    private double cur_step3_vol;
    private double cur_step4_vol;
    private double cur_step5_vol;
    private double cur_step6_vol;
    private String upload_date;
    private String creat_date;
    public gasHistoryLog(){}
    public gasHistoryLog(String id, String meter_id, String report_type, int length, int sn, String device_addr, String device_type, String corporation_code, String user_addr, double remainded_gas, double accumulative_gas, double sum_gas, int pay_num, int preinstall_modify_num, int current_modify_num, double current_unit_price, double current_gas, double accumulative_use_gas, String main_circuit, String auxiliary_circuit, String valve_status, String switch_status, String pulse_status, String overcurrent_status, String leakage_status, String low_pressure, String breakage_status, String data_storage, String open_valve, String close_valve, String backout_meter, String micro_leakage, String lost_contact, String nouse_gas, int one_day_gas, int two_day_gas, int three_day_gas, int four_day_gas, int five_day_gas, int six_day_gas, int one_month_gas, int two_month_gas, double settlement_date_gas, double main_circuit_voltage, double auxiliary_circuit_voltage, String version, int signal_intensity, String effective_date, double cur_step1_vol, double cur_step2_vol, double cur_step3_vol, double cur_step4_vol, double cur_step5_vol, double cur_step6_vol, String upload_date, String creat_date) {
        this.id = id;
        this.meter_id = meter_id;
        this.report_type = report_type;
        this.length = length;
        this.sn = sn;
        this.device_addr = device_addr;
        this.device_type = device_type;
        this.corporation_code = corporation_code;
        this.user_addr = user_addr;
        this.remainded_gas = remainded_gas;
        this.accumulative_gas = accumulative_gas;
        this.sum_gas = sum_gas;
        this.pay_num = pay_num;
        this.preinstall_modify_num = preinstall_modify_num;
        this.current_modify_num = current_modify_num;
        this.current_unit_price = current_unit_price;
        this.current_gas = current_gas;
        this.accumulative_use_gas = accumulative_use_gas;
        this.main_circuit = main_circuit;
        this.auxiliary_circuit = auxiliary_circuit;
        this.valve_status = valve_status;
        this.switch_status = switch_status;
        this.pulse_status = pulse_status;
        this.overcurrent_status = overcurrent_status;
        this.leakage_status = leakage_status;
        this.low_pressure = low_pressure;
        this.breakage_status = breakage_status;
        this.data_storage = data_storage;
        this.open_valve = open_valve;
        this.close_valve = close_valve;
        this.backout_meter = backout_meter;
        this.micro_leakage = micro_leakage;
        this.lost_contact = lost_contact;
        this.nouse_gas = nouse_gas;
        this.one_day_gas = one_day_gas;
        this.two_day_gas = two_day_gas;
        this.three_day_gas = three_day_gas;
        this.four_day_gas = four_day_gas;
        this.five_day_gas = five_day_gas;
        this.six_day_gas = six_day_gas;
        this.one_month_gas = one_month_gas;
        this.two_month_gas = two_month_gas;
        this.settlement_date_gas = settlement_date_gas;
        this.main_circuit_voltage = main_circuit_voltage;
        this.auxiliary_circuit_voltage = auxiliary_circuit_voltage;
        this.version = version;
        this.signal_intensity = signal_intensity;
        this.effective_date = effective_date;
        this.cur_step1_vol = cur_step1_vol;
        this.cur_step2_vol = cur_step2_vol;
        this.cur_step3_vol = cur_step3_vol;
        this.cur_step4_vol = cur_step4_vol;
        this.cur_step5_vol = cur_step5_vol;
        this.cur_step6_vol = cur_step6_vol;
        this.upload_date = upload_date;
        this.creat_date = creat_date;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getMeter_id() {
        return meter_id;
    }

    public void setMeter_id(String meter_id) {
        this.meter_id = meter_id;
    }

    public String getReport_type() {
        return report_type;
    }

    public void setReport_type(String report_type) {
        this.report_type = report_type;
    }

    public int getLength() {
        return length;
    }

    public void setLength(int length) {
        this.length = length;
    }

    public int getSn() {
        return sn;
    }

    public void setSn(int sn) {
        this.sn = sn;
    }

    public String getDevice_addr() {
        return device_addr;
    }

    public void setDevice_addr(String device_addr) {
        this.device_addr = device_addr;
    }

    public String getDevice_type() {
        return device_type;
    }

    public void setDevice_type(String device_type) {
        this.device_type = device_type;
    }

    public String getCorporation_code() {
        return corporation_code;
    }

    public void setCorporation_code(String corporation_code) {
        this.corporation_code = corporation_code;
    }

    public String getUser_addr() {
        return user_addr;
    }

    public void setUser_addr(String user_addr) {
        this.user_addr = user_addr;
    }

    public double getRemainded_gas() {
        return remainded_gas;
    }

    public void setRemainded_gas(double remainded_gas) {
        this.remainded_gas = remainded_gas;
    }

    public double getAccumulative_gas() {
        return accumulative_gas;
    }

    public void setAccumulative_gas(double accumulative_gas) {
        this.accumulative_gas = accumulative_gas;
    }

    public double getSum_gas() {
        return sum_gas;
    }

    public void setSum_gas(double sum_gas) {
        this.sum_gas = sum_gas;
    }

    public int getPay_num() {
        return pay_num;
    }

    public void setPay_num(int pay_num) {
        this.pay_num = pay_num;
    }

    public int getPreinstall_modify_num() {
        return preinstall_modify_num;
    }

    public void setPreinstall_modify_num(int preinstall_modify_num) {
        this.preinstall_modify_num = preinstall_modify_num;
    }

    public int getCurrent_modify_num() {
        return current_modify_num;
    }

    public void setCurrent_modify_num(int current_modify_num) {
        this.current_modify_num = current_modify_num;
    }

    public double getCurrent_unit_price() {
        return current_unit_price;
    }

    public void setCurrent_unit_price(double current_unit_price) {
        this.current_unit_price = current_unit_price;
    }

    public double getCurrent_gas() {
        return current_gas;
    }

    public void setCurrent_gas(double current_gas) {
        this.current_gas = current_gas;
    }

    public double getAccumulative_use_gas() {
        return accumulative_use_gas;
    }

    public void setAccumulative_use_gas(double accumulative_use_gas) {
        this.accumulative_use_gas = accumulative_use_gas;
    }

    public String getMain_circuit() {
        return main_circuit;
    }

    public void setMain_circuit(String main_circuit) {
        this.main_circuit = main_circuit;
    }

    public String getAuxiliary_circuit() {
        return auxiliary_circuit;
    }

    public void setAuxiliary_circuit(String auxiliary_circuit) {
        this.auxiliary_circuit = auxiliary_circuit;
    }

    public String getValve_status() {
        return valve_status;
    }

    public void setValve_status(String valve_status) {
        this.valve_status = valve_status;
    }

    public String getSwitch_status() {
        return switch_status;
    }

    public void setSwitch_status(String switch_status) {
        this.switch_status = switch_status;
    }

    public String getPulse_status() {
        return pulse_status;
    }

    public void setPulse_status(String pulse_status) {
        this.pulse_status = pulse_status;
    }

    public String getOvercurrent_status() {
        return overcurrent_status;
    }

    public void setOvercurrent_status(String overcurrent_status) {
        this.overcurrent_status = overcurrent_status;
    }

    public String getLeakage_status() {
        return leakage_status;
    }

    public void setLeakage_status(String leakage_status) {
        this.leakage_status = leakage_status;
    }

    public String getLow_pressure() {
        return low_pressure;
    }

    public void setLow_pressure(String low_pressure) {
        this.low_pressure = low_pressure;
    }

    public String getBreakage_status() {
        return breakage_status;
    }

    public void setBreakage_status(String breakage_status) {
        this.breakage_status = breakage_status;
    }

    public String getData_storage() {
        return data_storage;
    }

    public void setData_storage(String data_storage) {
        this.data_storage = data_storage;
    }

    public String getOpen_valve() {
        return open_valve;
    }

    public void setOpen_valve(String open_valve) {
        this.open_valve = open_valve;
    }

    public String getClose_valve() {
        return close_valve;
    }

    public void setClose_valve(String close_valve) {
        this.close_valve = close_valve;
    }

    public String getBackout_meter() {
        return backout_meter;
    }

    public void setBackout_meter(String backout_meter) {
        this.backout_meter = backout_meter;
    }

    public String getMicro_leakage() {
        return micro_leakage;
    }

    public void setMicro_leakage(String micro_leakage) {
        this.micro_leakage = micro_leakage;
    }

    public String getLost_contact() {
        return lost_contact;
    }

    public void setLost_contact(String lost_contact) {
        this.lost_contact = lost_contact;
    }

    public String getNouse_gas() {
        return nouse_gas;
    }

    public void setNouse_gas(String nouse_gas) {
        this.nouse_gas = nouse_gas;
    }

    public int getOne_day_gas() {
        return one_day_gas;
    }

    public void setOne_day_gas(int one_day_gas) {
        this.one_day_gas = one_day_gas;
    }

    public int getTwo_day_gas() {
        return two_day_gas;
    }

    public void setTwo_day_gas(int two_day_gas) {
        this.two_day_gas = two_day_gas;
    }

    public int getThree_day_gas() {
        return three_day_gas;
    }

    public void setThree_day_gas(int three_day_gas) {
        this.three_day_gas = three_day_gas;
    }

    public int getFour_day_gas() {
        return four_day_gas;
    }

    public void setFour_day_gas(int four_day_gas) {
        this.four_day_gas = four_day_gas;
    }

    public int getFive_day_gas() {
        return five_day_gas;
    }

    public void setFive_day_gas(int five_day_gas) {
        this.five_day_gas = five_day_gas;
    }

    public int getSix_day_gas() {
        return six_day_gas;
    }

    public void setSix_day_gas(int six_day_gas) {
        this.six_day_gas = six_day_gas;
    }

    public int getOne_month_gas() {
        return one_month_gas;
    }

    public void setOne_month_gas(int one_month_gas) {
        this.one_month_gas = one_month_gas;
    }

    public int getTwo_month_gas() {
        return two_month_gas;
    }

    public void setTwo_month_gas(int two_month_gas) {
        this.two_month_gas = two_month_gas;
    }

    public double getSettlement_date_gas() {
        return settlement_date_gas;
    }

    public void setSettlement_date_gas(double settlement_date_gas) {
        this.settlement_date_gas = settlement_date_gas;
    }

    public double getMain_circuit_voltage() {
        return main_circuit_voltage;
    }

    public void setMain_circuit_voltage(double main_circuit_voltage) {
        this.main_circuit_voltage = main_circuit_voltage;
    }

    public double getAuxiliary_circuit_voltage() {
        return auxiliary_circuit_voltage;
    }

    public void setAuxiliary_circuit_voltage(double auxiliary_circuit_voltage) {
        this.auxiliary_circuit_voltage = auxiliary_circuit_voltage;
    }

    public String getVersion() {
        return version;
    }

    public void setVersion(String version) {
        this.version = version;
    }

    public int getSignal_intensity() {
        return signal_intensity;
    }

    public void setSignal_intensity(int signal_intensity) {
        this.signal_intensity = signal_intensity;
    }

    public String getEffective_date() {
        return effective_date;
    }

    public void setEffective_date(String effective_date) {
        this.effective_date = effective_date.substring(0,11);
    }

    public double getCur_step1_vol() {
        return cur_step1_vol;
    }

    public void setCur_step1_vol(double cur_step1_vol) {
        this.cur_step1_vol = cur_step1_vol;
    }

    public double getCur_step2_vol() {
        return cur_step2_vol;
    }

    public void setCur_step2_vol(double cur_step2_vol) {
        this.cur_step2_vol = cur_step2_vol;
    }

    public double getCur_step3_vol() {
        return cur_step3_vol;
    }

    public void setCur_step3_vol(double cur_step3_vol) {
        this.cur_step3_vol = cur_step3_vol;
    }

    public double getCur_step4_vol() {
        return cur_step4_vol;
    }

    public void setCur_step4_vol(double cur_step4_vol) {
        this.cur_step4_vol = cur_step4_vol;
    }

    public double getCur_step5_vol() {
        return cur_step5_vol;
    }

    public void setCur_step5_vol(double cur_step5_vol) {
        this.cur_step5_vol = cur_step5_vol;
    }

    public double getCur_step6_vol() {
        return cur_step6_vol;
    }

    public void setCur_step6_vol(double cur_step6_vol) {
        this.cur_step6_vol = cur_step6_vol;
    }

    public String getUpload_date() {
        return upload_date;
    }

    public void setUpload_date(String upload_date) {
        this.upload_date = upload_date.substring(0,19);
    }

    public String getCreat_date() {
        return creat_date;
    }

    public void setCreat_date(String creat_date) {
        this.creat_date = creat_date.substring(0,19);
    }

    @Override
    public String toString() {
        return "GasHistoryLogService{" +
                "id='" + id + '\'' +
                ", meter_id='" + meter_id + '\'' +
                ", report_type='" + report_type + '\'' +
                ", length=" + length +
                ", sn=" + sn +
                ", device_addr='" + device_addr + '\'' +
                ", device_type='" + device_type + '\'' +
                ", corporation_code='" + corporation_code + '\'' +
                ", user_addr='" + user_addr + '\'' +
                ", remainded_gas=" + remainded_gas +
                ", accumulative_gas=" + accumulative_gas +
                ", sum_gas=" + sum_gas +
                ", pay_num=" + pay_num +
                ", preinstall_modify_num=" + preinstall_modify_num +
                ", current_modify_num=" + current_modify_num +
                ", current_unit_price=" + current_unit_price +
                ", current_gas=" + current_gas +
                ", accumulative_use_gas=" + accumulative_use_gas +
                ", main_circuit='" + main_circuit + '\'' +
                ", auxiliary_circuit='" + auxiliary_circuit + '\'' +
                ", valve_status='" + valve_status + '\'' +
                ", switch_status='" + switch_status + '\'' +
                ", pulse_status='" + pulse_status + '\'' +
                ", overcurrent_status='" + overcurrent_status + '\'' +
                ", leakage_status='" + leakage_status + '\'' +
                ", low_pressure='" + low_pressure + '\'' +
                ", breakage_status='" + breakage_status + '\'' +
                ", data_storage='" + data_storage + '\'' +
                ", open_valve='" + open_valve + '\'' +
                ", close_valve='" + close_valve + '\'' +
                ", backout_meter='" + backout_meter + '\'' +
                ", micro_leakage='" + micro_leakage + '\'' +
                ", lost_contact='" + lost_contact + '\'' +
                ", nouse_gas='" + nouse_gas + '\'' +
                ", one_day_gas=" + one_day_gas +
                ", two_day_gas=" + two_day_gas +
                ", three_day_gas=" + three_day_gas +
                ", four_day_gas=" + four_day_gas +
                ", five_day_gas=" + five_day_gas +
                ", six_day_gas=" + six_day_gas +
                ", one_month_gas=" + one_month_gas +
                ", two_month_gas=" + two_month_gas +
                ", settlement_date_gas=" + settlement_date_gas +
                ", main_circuit_voltage=" + main_circuit_voltage +
                ", auxiliary_circuit_voltage=" + auxiliary_circuit_voltage +
                ", version='" + version + '\'' +
                ", signal_intensity=" + signal_intensity +
                ", effective_date='" + effective_date + '\'' +
                ", cur_step1_vol=" + cur_step1_vol +
                ", cur_step2_vol=" + cur_step2_vol +
                ", cur_step3_vol=" + cur_step3_vol +
                ", cur_step4_vol=" + cur_step4_vol +
                ", cur_step5_vol=" + cur_step5_vol +
                ", cur_step6_vol=" + cur_step6_vol +
                ", upload_date='" + upload_date + '\'' +
                ", creat_date='" + creat_date + '\'' +
                '}';
    }
}