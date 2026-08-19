package com.sigmob.sdk.base.models.config;

import android.os.Parcelable;
import com.czhj.wire.AndroidMessage;
import com.czhj.wire.FieldEncoding;
import com.czhj.wire.Message;
import com.czhj.wire.ProtoAdapter;
import com.czhj.wire.ProtoReader;
import com.czhj.wire.ProtoWriter;
import com.czhj.wire.WireField;
import com.czhj.wire.internal.Internal;
import com.czhj.wire.okio.ByteString;
import java.io.IOException;
import java.util.List;

/* loaded from: classes4.dex */
public final class SigmobCommon extends AndroidMessage<SigmobCommon, Builder> {
    public static final ProtoAdapter<SigmobCommon> ADAPTER;
    public static final Parcelable.Creator<SigmobCommon> CREATOR;
    public static final Integer DEFAULT_CONFIGREFRESH;
    public static final Boolean DEFAULT_DISABLE_UP_LOCATION;
    public static final Boolean DEFAULT_ENABLE_ACTIVE_EXPIRE;
    public static final Boolean DEFAULT_ENABLE_DEBUG_LEVEL;
    public static final Boolean DEFAULT_ENABLE_EXTRA_DCLOG;
    public static final Integer DEFAULT_EXPIRE_MONITOR_INTERVAL;
    public static final Boolean DEFAULT_FEEDBACK_DEBUG;
    public static final Boolean DEFAULT_IS_GDPR_REGION;
    public static final Integer DEFAULT_LOAD_INTERVAL;
    public static final Boolean DEFAULT_LOG_ENC;
    public static final Integer DEFAULT_MAX_SEND_LOG_RECORDS;
    public static final Integer DEFAULT_NETWORK_TIMEOUT;
    public static final Boolean DEFAULT_NONCOMPLIANCE_MARK;
    public static final String DEFAULT_PRELOAD_URL = "";
    public static final Integer DEFAULT_SEND_LOG_INTERVAL;
    public static final Integer DEFAULT_SNIFFING_TYPE;
    public static final Integer DEFAULT_TRACKING_EXPIRATION_TIME;
    public static final Integer DEFAULT_TRACKING_RETRY_INTERVAL;
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.sigmob.sdk.base.models.config.SigmobAntiFraudLogConfig#ADAPTER", tag = 7)
    public final SigmobAntiFraudLogConfig anti_fraud_log;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", tag = 6)
    public final Integer configRefresh;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", label = WireField.Label.REPEATED, tag = 13)
    public final List<Integer> dclog_blacklist;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", tag = 16)
    public final Boolean disable_up_location;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", tag = 23)
    public final Boolean enable_active_expire;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", tag = 14)
    public final Boolean enable_debug_level;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", tag = 19)
    public final Boolean enable_extra_dclog;

    @WireField(adapter = "com.sigmob.sdk.base.models.config.SigmobCommonEndpointsConfig#ADAPTER", tag = 1)
    public final SigmobCommonEndpointsConfig endpoints;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", tag = 22)
    public final Integer expire_monitor_interval;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", tag = 18)
    public final Boolean feedback_debug;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", tag = 8)
    public final Boolean is_gdpr_region;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", tag = 15)
    public final Integer load_interval;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", tag = 17)
    public final Boolean log_enc;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", tag = 11)
    public final Integer max_send_log_records;

    @WireField(adapter = "com.sigmob.sdk.base.models.config.SigmobNativeConfig#ADAPTER", tag = 4)
    public final SigmobNativeConfig native_config;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", tag = 20)
    public final Integer network_timeout;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", tag = 21)
    public final Boolean noncompliance_mark;

    @WireField(adapter = "com.sigmob.sdk.base.models.config.SigmobPreload#ADAPTER", label = WireField.Label.REPEATED, tag = 26)
    public final List<SigmobPreload> preload;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 25)
    public final String preload_url;

    @WireField(adapter = "com.sigmob.sdk.base.models.config.SigmobRvConfig#ADAPTER", tag = 2)
    public final SigmobRvConfig rv_config;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", tag = 12)
    public final Integer send_log_interval;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", tag = 24)
    public final Integer sniffing_type;

    @WireField(adapter = "com.sigmob.sdk.base.models.config.SigmobSplashConfig#ADAPTER", tag = 3)
    public final SigmobSplashConfig splash_config;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", tag = 9)
    public final Integer tracking_expiration_time;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", tag = 10)
    public final Integer tracking_retry_interval;

    public static final class Builder extends Message.Builder<SigmobCommon, Builder> {
        public SigmobAntiFraudLogConfig anti_fraud_log;
        public SigmobCommonEndpointsConfig endpoints;
        public SigmobNativeConfig native_config;
        public SigmobRvConfig rv_config;
        public SigmobSplashConfig splash_config;
        public Integer configRefresh = SigmobCommon.DEFAULT_CONFIGREFRESH;
        public Boolean is_gdpr_region = SigmobCommon.DEFAULT_IS_GDPR_REGION;
        public Integer tracking_expiration_time = SigmobCommon.DEFAULT_TRACKING_EXPIRATION_TIME;
        public Integer tracking_retry_interval = SigmobCommon.DEFAULT_TRACKING_RETRY_INTERVAL;
        public Integer max_send_log_records = SigmobCommon.DEFAULT_MAX_SEND_LOG_RECORDS;
        public Integer send_log_interval = SigmobCommon.DEFAULT_SEND_LOG_INTERVAL;
        public Boolean enable_debug_level = SigmobCommon.DEFAULT_ENABLE_DEBUG_LEVEL;
        public Integer load_interval = SigmobCommon.DEFAULT_LOAD_INTERVAL;
        public Boolean disable_up_location = SigmobCommon.DEFAULT_DISABLE_UP_LOCATION;
        public Boolean log_enc = SigmobCommon.DEFAULT_LOG_ENC;
        public Boolean feedback_debug = SigmobCommon.DEFAULT_FEEDBACK_DEBUG;
        public Boolean enable_extra_dclog = SigmobCommon.DEFAULT_ENABLE_EXTRA_DCLOG;
        public Integer network_timeout = SigmobCommon.DEFAULT_NETWORK_TIMEOUT;
        public Boolean noncompliance_mark = SigmobCommon.DEFAULT_NONCOMPLIANCE_MARK;
        public Integer expire_monitor_interval = SigmobCommon.DEFAULT_EXPIRE_MONITOR_INTERVAL;
        public Boolean enable_active_expire = SigmobCommon.DEFAULT_ENABLE_ACTIVE_EXPIRE;
        public Integer sniffing_type = SigmobCommon.DEFAULT_SNIFFING_TYPE;
        public String preload_url = "";
        public List<Integer> dclog_blacklist = Internal.newMutableList();
        public List<SigmobPreload> preload = Internal.newMutableList();

        public Builder anti_fraud_log(SigmobAntiFraudLogConfig sigmobAntiFraudLogConfig) {
            this.anti_fraud_log = sigmobAntiFraudLogConfig;
            return this;
        }

        public Builder configRefresh(Integer num) {
            this.configRefresh = num;
            return this;
        }

        public Builder dclog_blacklist(List<Integer> list) {
            Internal.checkElementsNotNull(list);
            this.dclog_blacklist = list;
            return this;
        }

        public Builder disable_up_location(Boolean bool) {
            this.disable_up_location = bool;
            return this;
        }

        public Builder enable_active_expire(Boolean bool) {
            this.enable_active_expire = bool;
            return this;
        }

        public Builder enable_debug_level(Boolean bool) {
            this.enable_debug_level = bool;
            return this;
        }

        public Builder enable_extra_dclog(Boolean bool) {
            this.enable_extra_dclog = bool;
            return this;
        }

        public Builder endpoints(SigmobCommonEndpointsConfig sigmobCommonEndpointsConfig) {
            this.endpoints = sigmobCommonEndpointsConfig;
            return this;
        }

        public Builder expire_monitor_interval(Integer num) {
            this.expire_monitor_interval = num;
            return this;
        }

        public Builder feedback_debug(Boolean bool) {
            this.feedback_debug = bool;
            return this;
        }

        public Builder is_gdpr_region(Boolean bool) {
            this.is_gdpr_region = bool;
            return this;
        }

        public Builder load_interval(Integer num) {
            this.load_interval = num;
            return this;
        }

        public Builder log_enc(Boolean bool) {
            this.log_enc = bool;
            return this;
        }

        public Builder max_send_log_records(Integer num) {
            this.max_send_log_records = num;
            return this;
        }

        public Builder native_config(SigmobNativeConfig sigmobNativeConfig) {
            this.native_config = sigmobNativeConfig;
            return this;
        }

        public Builder network_timeout(Integer num) {
            this.network_timeout = num;
            return this;
        }

        public Builder noncompliance_mark(Boolean bool) {
            this.noncompliance_mark = bool;
            return this;
        }

        public Builder preload(List<SigmobPreload> list) {
            Internal.checkElementsNotNull(list);
            this.preload = list;
            return this;
        }

        public Builder preload_url(String str) {
            this.preload_url = str;
            return this;
        }

        public Builder rv_config(SigmobRvConfig sigmobRvConfig) {
            this.rv_config = sigmobRvConfig;
            return this;
        }

        public Builder send_log_interval(Integer num) {
            this.send_log_interval = num;
            return this;
        }

        public Builder sniffing_type(Integer num) {
            this.sniffing_type = num;
            return this;
        }

        public Builder splash_config(SigmobSplashConfig sigmobSplashConfig) {
            this.splash_config = sigmobSplashConfig;
            return this;
        }

        public Builder tracking_expiration_time(Integer num) {
            this.tracking_expiration_time = num;
            return this;
        }

        public Builder tracking_retry_interval(Integer num) {
            this.tracking_retry_interval = num;
            return this;
        }

        @Override // com.czhj.wire.Message.Builder
        public SigmobCommon build() {
            return new SigmobCommon(this.endpoints, this.rv_config, this.splash_config, this.native_config, this.configRefresh, this.anti_fraud_log, this.is_gdpr_region, this.tracking_expiration_time, this.tracking_retry_interval, this.max_send_log_records, this.send_log_interval, this.dclog_blacklist, this.enable_debug_level, this.load_interval, this.disable_up_location, this.log_enc, this.feedback_debug, this.enable_extra_dclog, this.network_timeout, this.noncompliance_mark, this.expire_monitor_interval, this.enable_active_expire, this.sniffing_type, this.preload_url, this.preload, super.buildUnknownFields());
        }
    }

    public static final class ProtoAdapter_SigmobCommon extends ProtoAdapter<SigmobCommon> {
        public ProtoAdapter_SigmobCommon() {
            super(FieldEncoding.LENGTH_DELIMITED, SigmobCommon.class);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.czhj.wire.ProtoAdapter
        public SigmobCommon decode(ProtoReader protoReader) throws IOException {
            List list;
            Object obj;
            Builder builder = new Builder();
            long jBeginMessage = protoReader.beginMessage();
            while (true) {
                int iNextTag = protoReader.nextTag();
                if (iNextTag == -1) {
                    protoReader.endMessage(jBeginMessage);
                    return builder.build();
                }
                switch (iNextTag) {
                    case 1:
                        builder.endpoints(SigmobCommonEndpointsConfig.ADAPTER.decode(protoReader));
                        continue;
                    case 2:
                        builder.rv_config(SigmobRvConfig.ADAPTER.decode(protoReader));
                        continue;
                    case 3:
                        builder.splash_config(SigmobSplashConfig.ADAPTER.decode(protoReader));
                        continue;
                    case 4:
                        builder.native_config(SigmobNativeConfig.ADAPTER.decode(protoReader));
                        continue;
                    case 5:
                    default:
                        FieldEncoding fieldEncodingPeekFieldEncoding = protoReader.peekFieldEncoding();
                        builder.addUnknownField(iNextTag, fieldEncodingPeekFieldEncoding, fieldEncodingPeekFieldEncoding.rawProtoAdapter().decode(protoReader));
                        continue;
                    case 6:
                        builder.configRefresh(ProtoAdapter.UINT32.decode(protoReader));
                        continue;
                    case 7:
                        builder.anti_fraud_log(SigmobAntiFraudLogConfig.ADAPTER.decode(protoReader));
                        continue;
                    case 8:
                        builder.is_gdpr_region(ProtoAdapter.BOOL.decode(protoReader));
                        continue;
                    case 9:
                        builder.tracking_expiration_time(ProtoAdapter.UINT32.decode(protoReader));
                        continue;
                    case 10:
                        builder.tracking_retry_interval(ProtoAdapter.UINT32.decode(protoReader));
                        continue;
                    case 11:
                        builder.max_send_log_records(ProtoAdapter.UINT32.decode(protoReader));
                        continue;
                    case 12:
                        builder.send_log_interval(ProtoAdapter.UINT32.decode(protoReader));
                        continue;
                    case 13:
                        list = builder.dclog_blacklist;
                        obj = (Integer) ProtoAdapter.UINT32.decode(protoReader);
                        break;
                    case 14:
                        builder.enable_debug_level(ProtoAdapter.BOOL.decode(protoReader));
                        continue;
                    case 15:
                        builder.load_interval(ProtoAdapter.UINT32.decode(protoReader));
                        continue;
                    case 16:
                        builder.disable_up_location(ProtoAdapter.BOOL.decode(protoReader));
                        continue;
                    case 17:
                        builder.log_enc(ProtoAdapter.BOOL.decode(protoReader));
                        continue;
                    case 18:
                        builder.feedback_debug(ProtoAdapter.BOOL.decode(protoReader));
                        continue;
                    case 19:
                        builder.enable_extra_dclog(ProtoAdapter.BOOL.decode(protoReader));
                        continue;
                    case 20:
                        builder.network_timeout(ProtoAdapter.UINT32.decode(protoReader));
                        continue;
                    case 21:
                        builder.noncompliance_mark(ProtoAdapter.BOOL.decode(protoReader));
                        continue;
                    case 22:
                        builder.expire_monitor_interval(ProtoAdapter.UINT32.decode(protoReader));
                        continue;
                    case 23:
                        builder.enable_active_expire(ProtoAdapter.BOOL.decode(protoReader));
                        continue;
                    case 24:
                        builder.sniffing_type(ProtoAdapter.UINT32.decode(protoReader));
                        continue;
                    case 25:
                        builder.preload_url(ProtoAdapter.STRING.decode(protoReader));
                        continue;
                    case 26:
                        list = builder.preload;
                        obj = (SigmobPreload) SigmobPreload.ADAPTER.decode(protoReader);
                        break;
                }
                list.add(obj);
            }
        }

        @Override // com.czhj.wire.ProtoAdapter
        public void encode(ProtoWriter protoWriter, SigmobCommon sigmobCommon) throws IOException {
            SigmobCommonEndpointsConfig.ADAPTER.encodeWithTag(protoWriter, 1, sigmobCommon.endpoints);
            SigmobRvConfig.ADAPTER.encodeWithTag(protoWriter, 2, sigmobCommon.rv_config);
            SigmobSplashConfig.ADAPTER.encodeWithTag(protoWriter, 3, sigmobCommon.splash_config);
            SigmobNativeConfig.ADAPTER.encodeWithTag(protoWriter, 4, sigmobCommon.native_config);
            ProtoAdapter<Integer> protoAdapter = ProtoAdapter.UINT32;
            protoAdapter.encodeWithTag(protoWriter, 6, sigmobCommon.configRefresh);
            SigmobAntiFraudLogConfig.ADAPTER.encodeWithTag(protoWriter, 7, sigmobCommon.anti_fraud_log);
            ProtoAdapter<Boolean> protoAdapter2 = ProtoAdapter.BOOL;
            protoAdapter2.encodeWithTag(protoWriter, 8, sigmobCommon.is_gdpr_region);
            protoAdapter.encodeWithTag(protoWriter, 9, sigmobCommon.tracking_expiration_time);
            protoAdapter.encodeWithTag(protoWriter, 10, sigmobCommon.tracking_retry_interval);
            protoAdapter.encodeWithTag(protoWriter, 11, sigmobCommon.max_send_log_records);
            protoAdapter.encodeWithTag(protoWriter, 12, sigmobCommon.send_log_interval);
            protoAdapter.asRepeated().encodeWithTag(protoWriter, 13, sigmobCommon.dclog_blacklist);
            protoAdapter2.encodeWithTag(protoWriter, 14, sigmobCommon.enable_debug_level);
            protoAdapter.encodeWithTag(protoWriter, 15, sigmobCommon.load_interval);
            protoAdapter2.encodeWithTag(protoWriter, 16, sigmobCommon.disable_up_location);
            protoAdapter2.encodeWithTag(protoWriter, 17, sigmobCommon.log_enc);
            protoAdapter2.encodeWithTag(protoWriter, 18, sigmobCommon.feedback_debug);
            protoAdapter2.encodeWithTag(protoWriter, 19, sigmobCommon.enable_extra_dclog);
            protoAdapter.encodeWithTag(protoWriter, 20, sigmobCommon.network_timeout);
            protoAdapter2.encodeWithTag(protoWriter, 21, sigmobCommon.noncompliance_mark);
            protoAdapter.encodeWithTag(protoWriter, 22, sigmobCommon.expire_monitor_interval);
            protoAdapter2.encodeWithTag(protoWriter, 23, sigmobCommon.enable_active_expire);
            protoAdapter.encodeWithTag(protoWriter, 24, sigmobCommon.sniffing_type);
            ProtoAdapter.STRING.encodeWithTag(protoWriter, 25, sigmobCommon.preload_url);
            SigmobPreload.ADAPTER.asRepeated().encodeWithTag(protoWriter, 26, sigmobCommon.preload);
            protoWriter.writeBytes(sigmobCommon.unknownFields());
        }

        @Override // com.czhj.wire.ProtoAdapter
        public int encodedSize(SigmobCommon sigmobCommon) {
            int iEncodedSizeWithTag = SigmobCommonEndpointsConfig.ADAPTER.encodedSizeWithTag(1, sigmobCommon.endpoints) + SigmobRvConfig.ADAPTER.encodedSizeWithTag(2, sigmobCommon.rv_config) + SigmobSplashConfig.ADAPTER.encodedSizeWithTag(3, sigmobCommon.splash_config) + SigmobNativeConfig.ADAPTER.encodedSizeWithTag(4, sigmobCommon.native_config);
            ProtoAdapter<Integer> protoAdapter = ProtoAdapter.UINT32;
            int iEncodedSizeWithTag2 = iEncodedSizeWithTag + protoAdapter.encodedSizeWithTag(6, sigmobCommon.configRefresh) + SigmobAntiFraudLogConfig.ADAPTER.encodedSizeWithTag(7, sigmobCommon.anti_fraud_log);
            ProtoAdapter<Boolean> protoAdapter2 = ProtoAdapter.BOOL;
            return iEncodedSizeWithTag2 + protoAdapter2.encodedSizeWithTag(8, sigmobCommon.is_gdpr_region) + protoAdapter.encodedSizeWithTag(9, sigmobCommon.tracking_expiration_time) + protoAdapter.encodedSizeWithTag(10, sigmobCommon.tracking_retry_interval) + protoAdapter.encodedSizeWithTag(11, sigmobCommon.max_send_log_records) + protoAdapter.encodedSizeWithTag(12, sigmobCommon.send_log_interval) + protoAdapter.asRepeated().encodedSizeWithTag(13, sigmobCommon.dclog_blacklist) + protoAdapter2.encodedSizeWithTag(14, sigmobCommon.enable_debug_level) + protoAdapter.encodedSizeWithTag(15, sigmobCommon.load_interval) + protoAdapter2.encodedSizeWithTag(16, sigmobCommon.disable_up_location) + protoAdapter2.encodedSizeWithTag(17, sigmobCommon.log_enc) + protoAdapter2.encodedSizeWithTag(18, sigmobCommon.feedback_debug) + protoAdapter2.encodedSizeWithTag(19, sigmobCommon.enable_extra_dclog) + protoAdapter.encodedSizeWithTag(20, sigmobCommon.network_timeout) + protoAdapter2.encodedSizeWithTag(21, sigmobCommon.noncompliance_mark) + protoAdapter.encodedSizeWithTag(22, sigmobCommon.expire_monitor_interval) + protoAdapter2.encodedSizeWithTag(23, sigmobCommon.enable_active_expire) + protoAdapter.encodedSizeWithTag(24, sigmobCommon.sniffing_type) + ProtoAdapter.STRING.encodedSizeWithTag(25, sigmobCommon.preload_url) + SigmobPreload.ADAPTER.asRepeated().encodedSizeWithTag(26, sigmobCommon.preload) + sigmobCommon.unknownFields().size();
        }

        @Override // com.czhj.wire.ProtoAdapter
        public SigmobCommon redact(SigmobCommon sigmobCommon) {
            Builder builderNewBuilder = sigmobCommon.newBuilder();
            SigmobCommonEndpointsConfig sigmobCommonEndpointsConfig = builderNewBuilder.endpoints;
            if (sigmobCommonEndpointsConfig != null) {
                builderNewBuilder.endpoints = SigmobCommonEndpointsConfig.ADAPTER.redact(sigmobCommonEndpointsConfig);
            }
            SigmobRvConfig sigmobRvConfig = builderNewBuilder.rv_config;
            if (sigmobRvConfig != null) {
                builderNewBuilder.rv_config = SigmobRvConfig.ADAPTER.redact(sigmobRvConfig);
            }
            SigmobSplashConfig sigmobSplashConfig = builderNewBuilder.splash_config;
            if (sigmobSplashConfig != null) {
                builderNewBuilder.splash_config = SigmobSplashConfig.ADAPTER.redact(sigmobSplashConfig);
            }
            SigmobNativeConfig sigmobNativeConfig = builderNewBuilder.native_config;
            if (sigmobNativeConfig != null) {
                builderNewBuilder.native_config = SigmobNativeConfig.ADAPTER.redact(sigmobNativeConfig);
            }
            SigmobAntiFraudLogConfig sigmobAntiFraudLogConfig = builderNewBuilder.anti_fraud_log;
            if (sigmobAntiFraudLogConfig != null) {
                builderNewBuilder.anti_fraud_log = SigmobAntiFraudLogConfig.ADAPTER.redact(sigmobAntiFraudLogConfig);
            }
            Internal.redactElements(builderNewBuilder.preload, SigmobPreload.ADAPTER);
            builderNewBuilder.clearUnknownFields();
            return builderNewBuilder.build();
        }
    }

    static {
        ProtoAdapter_SigmobCommon protoAdapter_SigmobCommon = new ProtoAdapter_SigmobCommon();
        ADAPTER = protoAdapter_SigmobCommon;
        CREATOR = AndroidMessage.newCreator(protoAdapter_SigmobCommon);
        DEFAULT_CONFIGREFRESH = 0;
        Boolean bool = Boolean.FALSE;
        DEFAULT_IS_GDPR_REGION = bool;
        DEFAULT_TRACKING_EXPIRATION_TIME = 0;
        DEFAULT_TRACKING_RETRY_INTERVAL = 0;
        DEFAULT_MAX_SEND_LOG_RECORDS = 0;
        DEFAULT_SEND_LOG_INTERVAL = 0;
        DEFAULT_ENABLE_DEBUG_LEVEL = bool;
        DEFAULT_LOAD_INTERVAL = 0;
        DEFAULT_DISABLE_UP_LOCATION = bool;
        DEFAULT_LOG_ENC = bool;
        DEFAULT_FEEDBACK_DEBUG = bool;
        DEFAULT_ENABLE_EXTRA_DCLOG = bool;
        DEFAULT_NETWORK_TIMEOUT = 0;
        DEFAULT_NONCOMPLIANCE_MARK = bool;
        DEFAULT_EXPIRE_MONITOR_INTERVAL = 0;
        DEFAULT_ENABLE_ACTIVE_EXPIRE = bool;
        DEFAULT_SNIFFING_TYPE = 0;
    }

    public SigmobCommon(SigmobCommonEndpointsConfig sigmobCommonEndpointsConfig, SigmobRvConfig sigmobRvConfig, SigmobSplashConfig sigmobSplashConfig, SigmobNativeConfig sigmobNativeConfig, Integer num, SigmobAntiFraudLogConfig sigmobAntiFraudLogConfig, Boolean bool, Integer num2, Integer num3, Integer num4, Integer num5, List<Integer> list, Boolean bool2, Integer num6, Boolean bool3, Boolean bool4, Boolean bool5, Boolean bool6, Integer num7, Boolean bool7, Integer num8, Boolean bool8, Integer num9, String str, List<SigmobPreload> list2) {
        this(sigmobCommonEndpointsConfig, sigmobRvConfig, sigmobSplashConfig, sigmobNativeConfig, num, sigmobAntiFraudLogConfig, bool, num2, num3, num4, num5, list, bool2, num6, bool3, bool4, bool5, bool6, num7, bool7, num8, bool8, num9, str, list2, ByteString.EMPTY);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SigmobCommon)) {
            return false;
        }
        SigmobCommon sigmobCommon = (SigmobCommon) obj;
        return unknownFields().equals(sigmobCommon.unknownFields()) && Internal.equals(this.endpoints, sigmobCommon.endpoints) && Internal.equals(this.rv_config, sigmobCommon.rv_config) && Internal.equals(this.splash_config, sigmobCommon.splash_config) && Internal.equals(this.native_config, sigmobCommon.native_config) && Internal.equals(this.configRefresh, sigmobCommon.configRefresh) && Internal.equals(this.anti_fraud_log, sigmobCommon.anti_fraud_log) && Internal.equals(this.is_gdpr_region, sigmobCommon.is_gdpr_region) && Internal.equals(this.tracking_expiration_time, sigmobCommon.tracking_expiration_time) && Internal.equals(this.tracking_retry_interval, sigmobCommon.tracking_retry_interval) && Internal.equals(this.max_send_log_records, sigmobCommon.max_send_log_records) && Internal.equals(this.send_log_interval, sigmobCommon.send_log_interval) && this.dclog_blacklist.equals(sigmobCommon.dclog_blacklist) && Internal.equals(this.enable_debug_level, sigmobCommon.enable_debug_level) && Internal.equals(this.load_interval, sigmobCommon.load_interval) && Internal.equals(this.disable_up_location, sigmobCommon.disable_up_location) && Internal.equals(this.log_enc, sigmobCommon.log_enc) && Internal.equals(this.feedback_debug, sigmobCommon.feedback_debug) && Internal.equals(this.enable_extra_dclog, sigmobCommon.enable_extra_dclog) && Internal.equals(this.network_timeout, sigmobCommon.network_timeout) && Internal.equals(this.noncompliance_mark, sigmobCommon.noncompliance_mark) && Internal.equals(this.expire_monitor_interval, sigmobCommon.expire_monitor_interval) && Internal.equals(this.enable_active_expire, sigmobCommon.enable_active_expire) && Internal.equals(this.sniffing_type, sigmobCommon.sniffing_type) && Internal.equals(this.preload_url, sigmobCommon.preload_url) && this.preload.equals(sigmobCommon.preload);
    }

    public int hashCode() {
        int i2 = this.hashCode;
        if (i2 != 0) {
            return i2;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        SigmobCommonEndpointsConfig sigmobCommonEndpointsConfig = this.endpoints;
        int iHashCode2 = (iHashCode + (sigmobCommonEndpointsConfig != null ? sigmobCommonEndpointsConfig.hashCode() : 0)) * 37;
        SigmobRvConfig sigmobRvConfig = this.rv_config;
        int iHashCode3 = (iHashCode2 + (sigmobRvConfig != null ? sigmobRvConfig.hashCode() : 0)) * 37;
        SigmobSplashConfig sigmobSplashConfig = this.splash_config;
        int iHashCode4 = (iHashCode3 + (sigmobSplashConfig != null ? sigmobSplashConfig.hashCode() : 0)) * 37;
        SigmobNativeConfig sigmobNativeConfig = this.native_config;
        int iHashCode5 = (iHashCode4 + (sigmobNativeConfig != null ? sigmobNativeConfig.hashCode() : 0)) * 37;
        Integer num = this.configRefresh;
        int iHashCode6 = (iHashCode5 + (num != null ? num.hashCode() : 0)) * 37;
        SigmobAntiFraudLogConfig sigmobAntiFraudLogConfig = this.anti_fraud_log;
        int iHashCode7 = (iHashCode6 + (sigmobAntiFraudLogConfig != null ? sigmobAntiFraudLogConfig.hashCode() : 0)) * 37;
        Boolean bool = this.is_gdpr_region;
        int iHashCode8 = (iHashCode7 + (bool != null ? bool.hashCode() : 0)) * 37;
        Integer num2 = this.tracking_expiration_time;
        int iHashCode9 = (iHashCode8 + (num2 != null ? num2.hashCode() : 0)) * 37;
        Integer num3 = this.tracking_retry_interval;
        int iHashCode10 = (iHashCode9 + (num3 != null ? num3.hashCode() : 0)) * 37;
        Integer num4 = this.max_send_log_records;
        int iHashCode11 = (iHashCode10 + (num4 != null ? num4.hashCode() : 0)) * 37;
        Integer num5 = this.send_log_interval;
        int iHashCode12 = (((iHashCode11 + (num5 != null ? num5.hashCode() : 0)) * 37) + this.dclog_blacklist.hashCode()) * 37;
        Boolean bool2 = this.enable_debug_level;
        int iHashCode13 = (iHashCode12 + (bool2 != null ? bool2.hashCode() : 0)) * 37;
        Integer num6 = this.load_interval;
        int iHashCode14 = (iHashCode13 + (num6 != null ? num6.hashCode() : 0)) * 37;
        Boolean bool3 = this.disable_up_location;
        int iHashCode15 = (iHashCode14 + (bool3 != null ? bool3.hashCode() : 0)) * 37;
        Boolean bool4 = this.log_enc;
        int iHashCode16 = (iHashCode15 + (bool4 != null ? bool4.hashCode() : 0)) * 37;
        Boolean bool5 = this.feedback_debug;
        int iHashCode17 = (iHashCode16 + (bool5 != null ? bool5.hashCode() : 0)) * 37;
        Boolean bool6 = this.enable_extra_dclog;
        int iHashCode18 = (iHashCode17 + (bool6 != null ? bool6.hashCode() : 0)) * 37;
        Integer num7 = this.network_timeout;
        int iHashCode19 = (iHashCode18 + (num7 != null ? num7.hashCode() : 0)) * 37;
        Boolean bool7 = this.noncompliance_mark;
        int iHashCode20 = (iHashCode19 + (bool7 != null ? bool7.hashCode() : 0)) * 37;
        Integer num8 = this.expire_monitor_interval;
        int iHashCode21 = (iHashCode20 + (num8 != null ? num8.hashCode() : 0)) * 37;
        Boolean bool8 = this.enable_active_expire;
        int iHashCode22 = (iHashCode21 + (bool8 != null ? bool8.hashCode() : 0)) * 37;
        Integer num9 = this.sniffing_type;
        int iHashCode23 = (iHashCode22 + (num9 != null ? num9.hashCode() : 0)) * 37;
        String str = this.preload_url;
        int iHashCode24 = ((iHashCode23 + (str != null ? str.hashCode() : 0)) * 37) + this.preload.hashCode();
        this.hashCode = iHashCode24;
        return iHashCode24;
    }

    @Override // com.czhj.wire.Message
    public String toString() {
        StringBuilder sb = new StringBuilder();
        if (this.endpoints != null) {
            sb.append(", endpoints=");
            sb.append(this.endpoints);
        }
        if (this.rv_config != null) {
            sb.append(", rv_config=");
            sb.append(this.rv_config);
        }
        if (this.splash_config != null) {
            sb.append(", splash_config=");
            sb.append(this.splash_config);
        }
        if (this.native_config != null) {
            sb.append(", native_config=");
            sb.append(this.native_config);
        }
        if (this.configRefresh != null) {
            sb.append(", configRefresh=");
            sb.append(this.configRefresh);
        }
        if (this.anti_fraud_log != null) {
            sb.append(", anti_fraud_log=");
            sb.append(this.anti_fraud_log);
        }
        if (this.is_gdpr_region != null) {
            sb.append(", is_gdpr_region=");
            sb.append(this.is_gdpr_region);
        }
        if (this.tracking_expiration_time != null) {
            sb.append(", tracking_expiration_time=");
            sb.append(this.tracking_expiration_time);
        }
        if (this.tracking_retry_interval != null) {
            sb.append(", tracking_retry_interval=");
            sb.append(this.tracking_retry_interval);
        }
        if (this.max_send_log_records != null) {
            sb.append(", max_send_log_records=");
            sb.append(this.max_send_log_records);
        }
        if (this.send_log_interval != null) {
            sb.append(", send_log_interval=");
            sb.append(this.send_log_interval);
        }
        if (!this.dclog_blacklist.isEmpty()) {
            sb.append(", dclog_blacklist=");
            sb.append(this.dclog_blacklist);
        }
        if (this.enable_debug_level != null) {
            sb.append(", enable_debug_level=");
            sb.append(this.enable_debug_level);
        }
        if (this.load_interval != null) {
            sb.append(", load_interval=");
            sb.append(this.load_interval);
        }
        if (this.disable_up_location != null) {
            sb.append(", disable_up_location=");
            sb.append(this.disable_up_location);
        }
        if (this.log_enc != null) {
            sb.append(", log_enc=");
            sb.append(this.log_enc);
        }
        if (this.feedback_debug != null) {
            sb.append(", feedback_debug=");
            sb.append(this.feedback_debug);
        }
        if (this.enable_extra_dclog != null) {
            sb.append(", enable_extra_dclog=");
            sb.append(this.enable_extra_dclog);
        }
        if (this.network_timeout != null) {
            sb.append(", network_timeout=");
            sb.append(this.network_timeout);
        }
        if (this.noncompliance_mark != null) {
            sb.append(", noncompliance_mark=");
            sb.append(this.noncompliance_mark);
        }
        if (this.expire_monitor_interval != null) {
            sb.append(", expire_monitor_interval=");
            sb.append(this.expire_monitor_interval);
        }
        if (this.enable_active_expire != null) {
            sb.append(", enable_active_expire=");
            sb.append(this.enable_active_expire);
        }
        if (this.sniffing_type != null) {
            sb.append(", sniffing_type=");
            sb.append(this.sniffing_type);
        }
        if (this.preload_url != null) {
            sb.append(", preload_url=");
            sb.append(this.preload_url);
        }
        if (!this.preload.isEmpty()) {
            sb.append(", preload=");
            sb.append(this.preload);
        }
        StringBuilder sbReplace = sb.replace(0, 2, "SigmobCommon{");
        sbReplace.append('}');
        return sbReplace.toString();
    }

    public SigmobCommon(SigmobCommonEndpointsConfig sigmobCommonEndpointsConfig, SigmobRvConfig sigmobRvConfig, SigmobSplashConfig sigmobSplashConfig, SigmobNativeConfig sigmobNativeConfig, Integer num, SigmobAntiFraudLogConfig sigmobAntiFraudLogConfig, Boolean bool, Integer num2, Integer num3, Integer num4, Integer num5, List<Integer> list, Boolean bool2, Integer num6, Boolean bool3, Boolean bool4, Boolean bool5, Boolean bool6, Integer num7, Boolean bool7, Integer num8, Boolean bool8, Integer num9, String str, List<SigmobPreload> list2, ByteString byteString) {
        super(ADAPTER, byteString);
        this.endpoints = sigmobCommonEndpointsConfig;
        this.rv_config = sigmobRvConfig;
        this.splash_config = sigmobSplashConfig;
        this.native_config = sigmobNativeConfig;
        this.configRefresh = num;
        this.anti_fraud_log = sigmobAntiFraudLogConfig;
        this.is_gdpr_region = bool;
        this.tracking_expiration_time = num2;
        this.tracking_retry_interval = num3;
        this.max_send_log_records = num4;
        this.send_log_interval = num5;
        this.dclog_blacklist = Internal.immutableCopyOf("dclog_blacklist", list);
        this.enable_debug_level = bool2;
        this.load_interval = num6;
        this.disable_up_location = bool3;
        this.log_enc = bool4;
        this.feedback_debug = bool5;
        this.enable_extra_dclog = bool6;
        this.network_timeout = num7;
        this.noncompliance_mark = bool7;
        this.expire_monitor_interval = num8;
        this.enable_active_expire = bool8;
        this.sniffing_type = num9;
        this.preload_url = str;
        this.preload = Internal.immutableCopyOf("preload", list2);
    }

    @Override // com.czhj.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.endpoints = this.endpoints;
        builder.rv_config = this.rv_config;
        builder.splash_config = this.splash_config;
        builder.native_config = this.native_config;
        builder.configRefresh = this.configRefresh;
        builder.anti_fraud_log = this.anti_fraud_log;
        builder.is_gdpr_region = this.is_gdpr_region;
        builder.tracking_expiration_time = this.tracking_expiration_time;
        builder.tracking_retry_interval = this.tracking_retry_interval;
        builder.max_send_log_records = this.max_send_log_records;
        builder.send_log_interval = this.send_log_interval;
        builder.dclog_blacklist = Internal.copyOf("dclog_blacklist", this.dclog_blacklist);
        builder.enable_debug_level = this.enable_debug_level;
        builder.load_interval = this.load_interval;
        builder.disable_up_location = this.disable_up_location;
        builder.log_enc = this.log_enc;
        builder.feedback_debug = this.feedback_debug;
        builder.enable_extra_dclog = this.enable_extra_dclog;
        builder.network_timeout = this.network_timeout;
        builder.noncompliance_mark = this.noncompliance_mark;
        builder.expire_monitor_interval = this.expire_monitor_interval;
        builder.enable_active_expire = this.enable_active_expire;
        builder.sniffing_type = this.sniffing_type;
        builder.preload_url = this.preload_url;
        builder.preload = Internal.copyOf("preload", this.preload);
        builder.addUnknownFields(unknownFields());
        return builder;
    }
}
