package com.comsats.cardarmourbackend.model;

import javax.persistence.*;

@Entity
public class Setting {
    private int settingid;
    private String language;
    private String timeformat;
    private String lightDarkMode;
    private int userid;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "SETTINGID")
    public int getSettingid() {
        return settingid;
    }

    public void setSettingid(int settingid) {
        this.settingid = settingid;
    }

    @Basic
    @Column(name = "LANGUAGE")
    public String getLanguage() {
        return language;
    }

    public void setLanguage(String language) {
        this.language = language;
    }

    @Basic
    @Column(name = "TIMEFORMAT")
    public String getTimeformat() {
        return timeformat;
    }

    public void setTimeformat(String timeformat) {
        this.timeformat = timeformat;
    }

    @Basic
    @Column(name = "light/dark_mode")
    public String getLightDarkMode() {
        return lightDarkMode;
    }

    public void setLightDarkMode(String lightDarkMode) {
        this.lightDarkMode = lightDarkMode;
    }

    @Basic
    @Column(name = "USERID")
    public int getUserid() {
        return userid;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Setting setting = (Setting) o;

        if (settingid != setting.settingid) return false;
        if (userid != setting.userid) return false;
        if (language != null ? !language.equals(setting.language) : setting.language != null) return false;
        if (timeformat != null ? !timeformat.equals(setting.timeformat) : setting.timeformat != null) return false;
        if (lightDarkMode != null ? !lightDarkMode.equals(setting.lightDarkMode) : setting.lightDarkMode != null)
            return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = settingid;
        result = 31 * result + (language != null ? language.hashCode() : 0);
        result = 31 * result + (timeformat != null ? timeformat.hashCode() : 0);
        result = 31 * result + (lightDarkMode != null ? lightDarkMode.hashCode() : 0);
        result = 31 * result + userid;
        return result;
    }
}
