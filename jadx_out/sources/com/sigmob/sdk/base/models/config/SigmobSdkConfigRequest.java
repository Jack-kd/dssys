package com.sigmob.sdk.base.models.config;

import android.os.Parcelable;
import com.czhj.sdk.common.models.App;
import com.czhj.sdk.common.models.Device;
import com.czhj.sdk.common.models.Network;
import com.czhj.sdk.common.models.Privacy;
import com.czhj.sdk.common.models.User;
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
public final class SigmobSdkConfigRequest extends AndroidMessage<SigmobSdkConfigRequest, Builder> {
    public static final ProtoAdapter<SigmobSdkConfigRequest> ADAPTER;
    public static final Parcelable.Creator<SigmobSdkConfigRequest> CREATOR;
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.sigmob.sdk.common.models.App#ADAPTER", tag = 1)
    public final App app;

    @WireField(adapter = "com.sigmob.sdk.common.models.Device#ADAPTER", tag = 2)
    public final Device device;

    @WireField(adapter = "com.sigmob.sdk.common.models.Network#ADAPTER", tag = 3)
    public final Network network;

    @WireField(adapter = "com.sigmob.sdk.common.models.Privacy#ADAPTER", tag = 4)
    public final Privacy privacy;

    @WireField(adapter = "com.sigmob.sdk.common.models.User#ADAPTER", tag = 5)
    public final User user;

    public static final class Builder extends Message.Builder<SigmobSdkConfigRequest, Builder> {
        public App app;
        public Device device;
        public Network network;
        public Privacy privacy;
        public User user;

        public Builder app(App app) {
            this.app = app;
            return this;
        }

        public Builder device(Device device) {
            this.device = device;
            return this;
        }

        public Builder network(Network network) {
            this.network = network;
            return this;
        }

        public Builder privacy(Privacy privacy) {
            this.privacy = privacy;
            return this;
        }

        public Builder user(User user) {
            this.user = user;
            return this;
        }

        @Override // com.czhj.wire.Message.Builder
        public SigmobSdkConfigRequest build() {
            return new SigmobSdkConfigRequest(this.app, this.device, this.network, this.privacy, this.user, super.buildUnknownFields());
        }
    }

    public static final class ProtoAdapter_SigmobSdkConfigRequest extends ProtoAdapter<SigmobSdkConfigRequest> {
        public ProtoAdapter_SigmobSdkConfigRequest() {
            super(FieldEncoding.LENGTH_DELIMITED, SigmobSdkConfigRequest.class);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.czhj.wire.ProtoAdapter
        public SigmobSdkConfigRequest decode(ProtoReader protoReader) throws IOException {
            Builder builder = new Builder();
            long jBeginMessage = protoReader.beginMessage();
            while (true) {
                int iNextTag = protoReader.nextTag();
                if (iNextTag == -1) {
                    protoReader.endMessage(jBeginMessage);
                    return builder.build();
                }
                if (iNextTag == 1) {
                    builder.app(App.ADAPTER.decode(protoReader));
                } else if (iNextTag == 2) {
                    builder.device(Device.ADAPTER.decode(protoReader));
                } else if (iNextTag == 3) {
                    builder.network(Network.ADAPTER.decode(protoReader));
                } else if (iNextTag == 4) {
                    builder.privacy(Privacy.ADAPTER.decode(protoReader));
                } else if (iNextTag != 5) {
                    FieldEncoding fieldEncodingPeekFieldEncoding = protoReader.peekFieldEncoding();
                    builder.addUnknownField(iNextTag, fieldEncodingPeekFieldEncoding, fieldEncodingPeekFieldEncoding.rawProtoAdapter().decode(protoReader));
                } else {
                    builder.user(User.ADAPTER.decode(protoReader));
                }
            }
        }

        @Override // com.czhj.wire.ProtoAdapter
        public void encode(ProtoWriter protoWriter, SigmobSdkConfigRequest sigmobSdkConfigRequest) throws IOException {
            App.ADAPTER.encodeWithTag(protoWriter, 1, sigmobSdkConfigRequest.app);
            Device.ADAPTER.encodeWithTag(protoWriter, 2, sigmobSdkConfigRequest.device);
            Network.ADAPTER.encodeWithTag(protoWriter, 3, sigmobSdkConfigRequest.network);
            Privacy.ADAPTER.encodeWithTag(protoWriter, 4, sigmobSdkConfigRequest.privacy);
            User.ADAPTER.encodeWithTag(protoWriter, 5, sigmobSdkConfigRequest.user);
            protoWriter.writeBytes(sigmobSdkConfigRequest.unknownFields());
        }

        @Override // com.czhj.wire.ProtoAdapter
        public int encodedSize(SigmobSdkConfigRequest sigmobSdkConfigRequest) {
            return App.ADAPTER.encodedSizeWithTag(1, sigmobSdkConfigRequest.app) + Device.ADAPTER.encodedSizeWithTag(2, sigmobSdkConfigRequest.device) + Network.ADAPTER.encodedSizeWithTag(3, sigmobSdkConfigRequest.network) + Privacy.ADAPTER.encodedSizeWithTag(4, sigmobSdkConfigRequest.privacy) + User.ADAPTER.encodedSizeWithTag(5, sigmobSdkConfigRequest.user) + sigmobSdkConfigRequest.unknownFields().size();
        }

        @Override // com.czhj.wire.ProtoAdapter
        public SigmobSdkConfigRequest redact(SigmobSdkConfigRequest sigmobSdkConfigRequest) {
            Builder builderNewBuilder = sigmobSdkConfigRequest.newBuilder();
            App app = builderNewBuilder.app;
            if (app != null) {
                builderNewBuilder.app = App.ADAPTER.redact(app);
            }
            Device device = builderNewBuilder.device;
            if (device != null) {
                builderNewBuilder.device = Device.ADAPTER.redact(device);
            }
            Network network = builderNewBuilder.network;
            if (network != null) {
                builderNewBuilder.network = Network.ADAPTER.redact(network);
            }
            Privacy privacy = builderNewBuilder.privacy;
            if (privacy != null) {
                builderNewBuilder.privacy = Privacy.ADAPTER.redact(privacy);
            }
            User user = builderNewBuilder.user;
            if (user != null) {
                builderNewBuilder.user = User.ADAPTER.redact(user);
            }
            builderNewBuilder.clearUnknownFields();
            return builderNewBuilder.build();
        }
    }

    static {
        ProtoAdapter_SigmobSdkConfigRequest protoAdapter_SigmobSdkConfigRequest = new ProtoAdapter_SigmobSdkConfigRequest();
        ADAPTER = protoAdapter_SigmobSdkConfigRequest;
        CREATOR = AndroidMessage.newCreator(protoAdapter_SigmobSdkConfigRequest);
    }

    public SigmobSdkConfigRequest(App app, Device device, Network network, Privacy privacy, User user) {
        this(app, device, network, privacy, user, ByteString.EMPTY);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SigmobSdkConfigRequest)) {
            return false;
        }
        SigmobSdkConfigRequest sigmobSdkConfigRequest = (SigmobSdkConfigRequest) obj;
        return unknownFields().equals(sigmobSdkConfigRequest.unknownFields()) && Internal.equals(this.app, sigmobSdkConfigRequest.app) && Internal.equals(this.device, sigmobSdkConfigRequest.device) && Internal.equals(this.network, sigmobSdkConfigRequest.network) && Internal.equals(this.privacy, sigmobSdkConfigRequest.privacy) && Internal.equals(this.user, sigmobSdkConfigRequest.user);
    }

    public int hashCode() {
        int i2 = this.hashCode;
        if (i2 != 0) {
            return i2;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        App app = this.app;
        int iHashCode2 = (iHashCode + (app != null ? app.hashCode() : 0)) * 37;
        Device device = this.device;
        int iHashCode3 = (iHashCode2 + (device != null ? device.hashCode() : 0)) * 37;
        Network network = this.network;
        int iHashCode4 = (iHashCode3 + (network != null ? network.hashCode() : 0)) * 37;
        Privacy privacy = this.privacy;
        int iHashCode5 = (iHashCode4 + (privacy != null ? privacy.hashCode() : 0)) * 37;
        User user = this.user;
        int iHashCode6 = iHashCode5 + (user != null ? user.hashCode() : 0);
        this.hashCode = iHashCode6;
        return iHashCode6;
    }

    @Override // com.czhj.wire.Message
    public String toString() {
        StringBuilder sb = new StringBuilder();
        if (this.app != null) {
            sb.append(", app=");
            sb.append(this.app);
        }
        if (this.device != null) {
            sb.append(", device=");
            sb.append(this.device);
        }
        if (this.network != null) {
            sb.append(", network=");
            sb.append(this.network);
        }
        if (this.privacy != null) {
            sb.append(", privacy=");
            sb.append(this.privacy);
        }
        if (this.user != null) {
            sb.append(", user=");
            sb.append(this.user);
        }
        StringBuilder sbReplace = sb.replace(0, 2, "SigmobSdkConfigRequest{");
        sbReplace.append('}');
        return sbReplace.toString();
    }

    public SigmobSdkConfigRequest(App app, Device device, Network network, Privacy privacy, User user, ByteString byteString) {
        super(ADAPTER, byteString);
        this.app = app;
        this.device = device;
        this.network = network;
        this.privacy = privacy;
        this.user = user;
    }

    @Override // com.czhj.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.app = this.app;
        builder.device = this.device;
        builder.network = this.network;
        builder.privacy = this.privacy;
        builder.user = this.user;
        builder.addUnknownFields(unknownFields());
        return builder;
    }
}
