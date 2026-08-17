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

/* loaded from: classes4.dex */
public final class SigmobSdkConfig extends AndroidMessage<SigmobSdkConfig, Builder> {
    public static final ProtoAdapter<SigmobSdkConfig> ADAPTER;
    public static final Parcelable.Creator<SigmobSdkConfig> CREATOR;
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.sigmob.sdk.base.models.SigmobAndroid#ADAPTER", tag = 3)
    public final SigmobAndroid sigmobAndroid_config;

    @WireField(adapter = "com.sigmob.sdk.base.models.SigmobCommon#ADAPTER", tag = 1)
    public final SigmobCommon sigmobCommon_config;

    public static final class Builder extends Message.Builder<SigmobSdkConfig, Builder> {
        public SigmobAndroid sigmobAndroid_config;
        public SigmobCommon sigmobCommon_config;

        public Builder android_config(SigmobAndroid sigmobAndroid) {
            this.sigmobAndroid_config = sigmobAndroid;
            return this;
        }

        public Builder common_config(SigmobCommon sigmobCommon) {
            this.sigmobCommon_config = sigmobCommon;
            return this;
        }

        @Override // com.czhj.wire.Message.Builder
        public SigmobSdkConfig build() {
            return new SigmobSdkConfig(this.sigmobCommon_config, this.sigmobAndroid_config, super.buildUnknownFields());
        }
    }

    public static final class ProtoAdapter_SdkConfig extends ProtoAdapter<SigmobSdkConfig> {
        public ProtoAdapter_SdkConfig() {
            super(FieldEncoding.LENGTH_DELIMITED, SigmobSdkConfig.class);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.czhj.wire.ProtoAdapter
        public SigmobSdkConfig decode(ProtoReader protoReader) throws IOException {
            Builder builder = new Builder();
            long jBeginMessage = protoReader.beginMessage();
            while (true) {
                int iNextTag = protoReader.nextTag();
                if (iNextTag == -1) {
                    protoReader.endMessage(jBeginMessage);
                    return builder.build();
                }
                if (iNextTag == 1) {
                    builder.common_config(SigmobCommon.ADAPTER.decode(protoReader));
                } else if (iNextTag != 3) {
                    FieldEncoding fieldEncodingPeekFieldEncoding = protoReader.peekFieldEncoding();
                    builder.addUnknownField(iNextTag, fieldEncodingPeekFieldEncoding, fieldEncodingPeekFieldEncoding.rawProtoAdapter().decode(protoReader));
                } else {
                    builder.android_config(SigmobAndroid.ADAPTER.decode(protoReader));
                }
            }
        }

        @Override // com.czhj.wire.ProtoAdapter
        public void encode(ProtoWriter protoWriter, SigmobSdkConfig sigmobSdkConfig) throws IOException {
            SigmobCommon.ADAPTER.encodeWithTag(protoWriter, 1, sigmobSdkConfig.sigmobCommon_config);
            SigmobAndroid.ADAPTER.encodeWithTag(protoWriter, 3, sigmobSdkConfig.sigmobAndroid_config);
            protoWriter.writeBytes(sigmobSdkConfig.unknownFields());
        }

        @Override // com.czhj.wire.ProtoAdapter
        public int encodedSize(SigmobSdkConfig sigmobSdkConfig) {
            return SigmobCommon.ADAPTER.encodedSizeWithTag(1, sigmobSdkConfig.sigmobCommon_config) + SigmobAndroid.ADAPTER.encodedSizeWithTag(3, sigmobSdkConfig.sigmobAndroid_config) + sigmobSdkConfig.unknownFields().size();
        }

        @Override // com.czhj.wire.ProtoAdapter
        public SigmobSdkConfig redact(SigmobSdkConfig sigmobSdkConfig) {
            Builder builderNewBuilder = sigmobSdkConfig.newBuilder();
            SigmobCommon sigmobCommon = builderNewBuilder.sigmobCommon_config;
            if (sigmobCommon != null) {
                builderNewBuilder.sigmobCommon_config = SigmobCommon.ADAPTER.redact(sigmobCommon);
            }
            SigmobAndroid sigmobAndroid = builderNewBuilder.sigmobAndroid_config;
            if (sigmobAndroid != null) {
                builderNewBuilder.sigmobAndroid_config = SigmobAndroid.ADAPTER.redact(sigmobAndroid);
            }
            builderNewBuilder.clearUnknownFields();
            return builderNewBuilder.build();
        }
    }

    static {
        ProtoAdapter_SdkConfig protoAdapter_SdkConfig = new ProtoAdapter_SdkConfig();
        ADAPTER = protoAdapter_SdkConfig;
        CREATOR = AndroidMessage.newCreator(protoAdapter_SdkConfig);
    }

    public SigmobSdkConfig(SigmobCommon sigmobCommon, SigmobAndroid sigmobAndroid) {
        this(sigmobCommon, sigmobAndroid, ByteString.EMPTY);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SigmobSdkConfig)) {
            return false;
        }
        SigmobSdkConfig sigmobSdkConfig = (SigmobSdkConfig) obj;
        return unknownFields().equals(sigmobSdkConfig.unknownFields()) && Internal.equals(this.sigmobCommon_config, sigmobSdkConfig.sigmobCommon_config) && Internal.equals(this.sigmobAndroid_config, sigmobSdkConfig.sigmobAndroid_config);
    }

    public int hashCode() {
        int i2 = this.hashCode;
        if (i2 != 0) {
            return i2;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        SigmobCommon sigmobCommon = this.sigmobCommon_config;
        int iHashCode2 = (iHashCode + (sigmobCommon != null ? sigmobCommon.hashCode() : 0)) * 37;
        SigmobAndroid sigmobAndroid = this.sigmobAndroid_config;
        int iHashCode3 = iHashCode2 + (sigmobAndroid != null ? sigmobAndroid.hashCode() : 0);
        this.hashCode = iHashCode3;
        return iHashCode3;
    }

    @Override // com.czhj.wire.Message
    public String toString() {
        StringBuilder sb = new StringBuilder();
        if (this.sigmobCommon_config != null) {
            sb.append(", sigmobCommon_config=");
            sb.append(this.sigmobCommon_config);
        }
        if (this.sigmobAndroid_config != null) {
            sb.append(", sigmobAndroid_config=");
            sb.append(this.sigmobAndroid_config);
        }
        StringBuilder sbReplace = sb.replace(0, 2, "SigmobSdkConfig{");
        sbReplace.append('}');
        return sbReplace.toString();
    }

    public SigmobSdkConfig(SigmobCommon sigmobCommon, SigmobAndroid sigmobAndroid, ByteString byteString) {
        super(ADAPTER, byteString);
        this.sigmobCommon_config = sigmobCommon;
        this.sigmobAndroid_config = sigmobAndroid;
    }

    @Override // com.czhj.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.sigmobCommon_config = this.sigmobCommon_config;
        builder.sigmobAndroid_config = this.sigmobAndroid_config;
        builder.addUnknownFields(unknownFields());
        return builder;
    }
}
