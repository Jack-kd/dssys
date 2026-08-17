package com.octopus.ad.model;

import com.anythink.core.api.ATCustomRuleKeys;
import com.octopus.ad.d.b.f;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public class UserProfile {
    public final String age;
    public final String consumptionAbility;
    public final String gender;
    public final String interestTag;
    public final String maritalStatus;
    public final String occupation;

    public static class Builder {
        public String age = "";
        public String gender = "";
        public String occupation = "";
        public String consumptionAbility = "";
        public String maritalStatus = "";
        public String interestTag = "";

        public Builder age(String str) {
            this.age = str;
            return this;
        }

        public UserProfile build() {
            return new UserProfile(this);
        }

        public Builder consumptionAbility(String str) {
            this.consumptionAbility = str;
            return this;
        }

        public Builder gender(String str) {
            this.gender = str;
            return this;
        }

        public Builder interestTag(String str) {
            this.interestTag = str;
            return this;
        }

        public Builder maritalStatus(String str) {
            this.maritalStatus = str;
            return this;
        }

        public Builder occupation(String str) {
            this.occupation = str;
            return this;
        }
    }

    public UserProfile(Builder builder) {
        this.age = builder.age;
        this.gender = builder.gender;
        this.occupation = builder.occupation;
        this.consumptionAbility = builder.consumptionAbility;
        this.maritalStatus = builder.maritalStatus;
        this.interestTag = builder.interestTag;
    }

    public JSONObject toJson() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(ATCustomRuleKeys.AGE, this.age);
            jSONObject.put(ATCustomRuleKeys.GENDER, this.gender);
            jSONObject.put("occupation", this.occupation);
            jSONObject.put("consumptionAbility", this.consumptionAbility);
            jSONObject.put("maritalStatus", this.maritalStatus);
            jSONObject.put("interestTag", this.interestTag);
            return jSONObject;
        } catch (Exception e2) {
            f.a("OctopusAd", "An Exception Caught", e2);
            return null;
        }
    }
}
