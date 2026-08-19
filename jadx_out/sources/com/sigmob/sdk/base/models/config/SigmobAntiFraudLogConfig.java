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
import com.umeng.analytics.pro.g;
import java.io.IOException;
import java.util.List;

/* loaded from: classes4.dex */
public final class SigmobAntiFraudLogConfig extends AndroidMessage<SigmobAntiFraudLogConfig, Builder> {
    public static final ProtoAdapter<SigmobAntiFraudLogConfig> ADAPTER;
    public static final Parcelable.Creator<SigmobAntiFraudLogConfig> CREATOR;
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.REPEATED, tag = 2)
    public final List<String> events;

    @WireField(adapter = "com.sigmob.sdk.base.models.config.SigmobMotionConfig#ADAPTER", tag = 1)
    public final SigmobMotionConfig motion_config;

    public static final class Builder extends Message.Builder<SigmobAntiFraudLogConfig, Builder> {
        public List<String> events = Internal.newMutableList();
        public SigmobMotionConfig motion_config;

        public Builder events(List<String> list) {
            Internal.checkElementsNotNull(list);
            this.events = list;
            return this;
        }

        public Builder motion_config(SigmobMotionConfig sigmobMotionConfig) {
            this.motion_config = sigmobMotionConfig;
            return this;
        }

        @Override // com.czhj.wire.Message.Builder
        public SigmobAntiFraudLogConfig build() {
            return new SigmobAntiFraudLogConfig(this.motion_config, this.events, super.buildUnknownFields());
        }
    }

    public static final class ProtoAdapter_SigmobAntiFraudLogConfig extends ProtoAdapter<SigmobAntiFraudLogConfig> {
        public ProtoAdapter_SigmobAntiFraudLogConfig() {
            super(FieldEncoding.LENGTH_DELIMITED, SigmobAntiFraudLogConfig.class);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.czhj.wire.ProtoAdapter
        public SigmobAntiFraudLogConfig decode(ProtoReader protoReader) throws IOException {
            Builder builder = new Builder();
            long jBeginMessage = protoReader.beginMessage();
            while (true) {
                int iNextTag = protoReader.nextTag();
                if (iNextTag == -1) {
                    protoReader.endMessage(jBeginMessage);
                    return builder.build();
                }
                if (iNextTag == 1) {
                    builder.motion_config(SigmobMotionConfig.ADAPTER.decode(protoReader));
                } else if (iNextTag != 2) {
                    FieldEncoding fieldEncodingPeekFieldEncoding = protoReader.peekFieldEncoding();
                    builder.addUnknownField(iNextTag, fieldEncodingPeekFieldEncoding, fieldEncodingPeekFieldEncoding.rawProtoAdapter().decode(protoReader));
                } else {
                    builder.events.add(ProtoAdapter.STRING.decode(protoReader));
                }
            }
        }

        @Override // com.czhj.wire.ProtoAdapter
        public void encode(ProtoWriter protoWriter, SigmobAntiFraudLogConfig sigmobAntiFraudLogConfig) throws IOException {
            SigmobMotionConfig.ADAPTER.encodeWithTag(protoWriter, 1, sigmobAntiFraudLogConfig.motion_config);
            ProtoAdapter.STRING.asRepeated().encodeWithTag(protoWriter, 2, sigmobAntiFraudLogConfig.events);
            protoWriter.writeBytes(sigmobAntiFraudLogConfig.unknownFields());
        }

        @Override // com.czhj.wire.ProtoAdapter
        public int encodedSize(SigmobAntiFraudLogConfig sigmobAntiFraudLogConfig) {
            return SigmobMotionConfig.ADAPTER.encodedSizeWithTag(1, sigmobAntiFraudLogConfig.motion_config) + ProtoAdapter.STRING.asRepeated().encodedSizeWithTag(2, sigmobAntiFraudLogConfig.events) + sigmobAntiFraudLogConfig.unknownFields().size();
        }

        @Override // com.czhj.wire.ProtoAdapter
        public SigmobAntiFraudLogConfig redact(SigmobAntiFraudLogConfig sigmobAntiFraudLogConfig) {
            Builder builderNewBuilder = sigmobAntiFraudLogConfig.newBuilder();
            SigmobMotionConfig sigmobMotionConfig = builderNewBuilder.motion_config;
            if (sigmobMotionConfig != null) {
                builderNewBuilder.motion_config = SigmobMotionConfig.ADAPTER.redact(sigmobMotionConfig);
            }
            builderNewBuilder.clearUnknownFields();
            return builderNewBuilder.build();
        }
    }

    static {
        ProtoAdapter_SigmobAntiFraudLogConfig protoAdapter_SigmobAntiFraudLogConfig = new ProtoAdapter_SigmobAntiFraudLogConfig();
        ADAPTER = protoAdapter_SigmobAntiFraudLogConfig;
        CREATOR = AndroidMessage.newCreator(protoAdapter_SigmobAntiFraudLogConfig);
    }

    public SigmobAntiFraudLogConfig(SigmobMotionConfig sigmobMotionConfig, List<String> list) {
        this(sigmobMotionConfig, list, ByteString.EMPTY);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SigmobAntiFraudLogConfig)) {
            return false;
        }
        SigmobAntiFraudLogConfig sigmobAntiFraudLogConfig = (SigmobAntiFraudLogConfig) obj;
        return unknownFields().equals(sigmobAntiFraudLogConfig.unknownFields()) && Internal.equals(this.motion_config, sigmobAntiFraudLogConfig.motion_config) && this.events.equals(sigmobAntiFraudLogConfig.events);
    }

    public int hashCode() {
        int i2 = this.hashCode;
        if (i2 != 0) {
            return i2;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        SigmobMotionConfig sigmobMotionConfig = this.motion_config;
        int iHashCode2 = ((iHashCode + (sigmobMotionConfig != null ? sigmobMotionConfig.hashCode() : 0)) * 37) + this.events.hashCode();
        this.hashCode = iHashCode2;
        return iHashCode2;
    }

    @Override // com.czhj.wire.Message
    public String toString() {
        StringBuilder sb = new StringBuilder();
        if (this.motion_config != null) {
            sb.append(", motion_config=");
            sb.append(this.motion_config);
        }
        if (!this.events.isEmpty()) {
            sb.append(", events=");
            sb.append(this.events);
        }
        StringBuilder sbReplace = sb.replace(0, 2, "SigmobAntiFraudLogConfig{");
        sbReplace.append('}');
        return sbReplace.toString();
    }

    public SigmobAntiFraudLogConfig(SigmobMotionConfig sigmobMotionConfig, List<String> list, ByteString byteString) {
        super(ADAPTER, byteString);
        this.motion_config = sigmobMotionConfig;
        this.events = Internal.immutableCopyOf(g.ax, list);
    }

    @Override // com.czhj.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.motion_config = this.motion_config;
        builder.events = Internal.copyOf(g.ax, this.events);
        builder.addUnknownFields(unknownFields());
        return builder;
    }
}
