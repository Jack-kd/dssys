package com.sigmob.sdk.base.models.rtb;

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
public final class ClickAreaSetting extends AndroidMessage<ClickAreaSetting, Builder> {
    public static final ProtoAdapter<ClickAreaSetting> ADAPTER;
    public static final Parcelable.Creator<ClickAreaSetting> CREATOR;
    public static final Float DEFAULT_BOTTOM;
    public static final Float DEFAULT_LEFT;
    public static final Float DEFAULT_RIGHT;
    public static final Float DEFAULT_TOP;
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#FLOAT", tag = 3)
    public final Float bottom;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#FLOAT", tag = 2)
    public final Float left;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#FLOAT", tag = 4)
    public final Float right;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#FLOAT", tag = 1)
    public final Float top;

    public static final class Builder extends Message.Builder<ClickAreaSetting, Builder> {
        public Float top = ClickAreaSetting.DEFAULT_TOP;
        public Float left = ClickAreaSetting.DEFAULT_LEFT;
        public Float bottom = ClickAreaSetting.DEFAULT_BOTTOM;
        public Float right = ClickAreaSetting.DEFAULT_RIGHT;

        public Builder bottom(Float f2) {
            this.bottom = f2;
            return this;
        }

        public Builder left(Float f2) {
            this.left = f2;
            return this;
        }

        public Builder right(Float f2) {
            this.right = f2;
            return this;
        }

        public Builder top(Float f2) {
            this.top = f2;
            return this;
        }

        @Override // com.czhj.wire.Message.Builder
        public ClickAreaSetting build() {
            return new ClickAreaSetting(this.top, this.left, this.bottom, this.right, super.buildUnknownFields());
        }
    }

    public static final class ProtoAdapter_ClickAreaSetting extends ProtoAdapter<ClickAreaSetting> {
        public ProtoAdapter_ClickAreaSetting() {
            super(FieldEncoding.LENGTH_DELIMITED, ClickAreaSetting.class);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.czhj.wire.ProtoAdapter
        public ClickAreaSetting decode(ProtoReader protoReader) throws IOException {
            Builder builder = new Builder();
            long jBeginMessage = protoReader.beginMessage();
            while (true) {
                int iNextTag = protoReader.nextTag();
                if (iNextTag == -1) {
                    protoReader.endMessage(jBeginMessage);
                    return builder.build();
                }
                if (iNextTag == 1) {
                    builder.top(ProtoAdapter.FLOAT.decode(protoReader));
                } else if (iNextTag == 2) {
                    builder.left(ProtoAdapter.FLOAT.decode(protoReader));
                } else if (iNextTag == 3) {
                    builder.bottom(ProtoAdapter.FLOAT.decode(protoReader));
                } else if (iNextTag != 4) {
                    FieldEncoding fieldEncodingPeekFieldEncoding = protoReader.peekFieldEncoding();
                    builder.addUnknownField(iNextTag, fieldEncodingPeekFieldEncoding, fieldEncodingPeekFieldEncoding.rawProtoAdapter().decode(protoReader));
                } else {
                    builder.right(ProtoAdapter.FLOAT.decode(protoReader));
                }
            }
        }

        @Override // com.czhj.wire.ProtoAdapter
        public void encode(ProtoWriter protoWriter, ClickAreaSetting clickAreaSetting) throws IOException {
            ProtoAdapter<Float> protoAdapter = ProtoAdapter.FLOAT;
            protoAdapter.encodeWithTag(protoWriter, 1, clickAreaSetting.top);
            protoAdapter.encodeWithTag(protoWriter, 2, clickAreaSetting.left);
            protoAdapter.encodeWithTag(protoWriter, 3, clickAreaSetting.bottom);
            protoAdapter.encodeWithTag(protoWriter, 4, clickAreaSetting.right);
            protoWriter.writeBytes(clickAreaSetting.unknownFields());
        }

        @Override // com.czhj.wire.ProtoAdapter
        public int encodedSize(ClickAreaSetting clickAreaSetting) {
            ProtoAdapter<Float> protoAdapter = ProtoAdapter.FLOAT;
            return protoAdapter.encodedSizeWithTag(1, clickAreaSetting.top) + protoAdapter.encodedSizeWithTag(2, clickAreaSetting.left) + protoAdapter.encodedSizeWithTag(3, clickAreaSetting.bottom) + protoAdapter.encodedSizeWithTag(4, clickAreaSetting.right) + clickAreaSetting.unknownFields().size();
        }

        @Override // com.czhj.wire.ProtoAdapter
        public ClickAreaSetting redact(ClickAreaSetting clickAreaSetting) {
            Builder builderNewBuilder = clickAreaSetting.newBuilder();
            builderNewBuilder.clearUnknownFields();
            return builderNewBuilder.build();
        }
    }

    static {
        ProtoAdapter_ClickAreaSetting protoAdapter_ClickAreaSetting = new ProtoAdapter_ClickAreaSetting();
        ADAPTER = protoAdapter_ClickAreaSetting;
        CREATOR = AndroidMessage.newCreator(protoAdapter_ClickAreaSetting);
        Float fValueOf = Float.valueOf(0.0f);
        DEFAULT_TOP = fValueOf;
        DEFAULT_LEFT = fValueOf;
        DEFAULT_BOTTOM = fValueOf;
        DEFAULT_RIGHT = fValueOf;
    }

    public ClickAreaSetting(Float f2, Float f3, Float f4, Float f5) {
        this(f2, f3, f4, f5, ByteString.EMPTY);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ClickAreaSetting)) {
            return false;
        }
        ClickAreaSetting clickAreaSetting = (ClickAreaSetting) obj;
        return unknownFields().equals(clickAreaSetting.unknownFields()) && Internal.equals(this.top, clickAreaSetting.top) && Internal.equals(this.left, clickAreaSetting.left) && Internal.equals(this.bottom, clickAreaSetting.bottom) && Internal.equals(this.right, clickAreaSetting.right);
    }

    public int hashCode() {
        int i2 = this.hashCode;
        if (i2 != 0) {
            return i2;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        Float f2 = this.top;
        int iHashCode2 = (iHashCode + (f2 != null ? f2.hashCode() : 0)) * 37;
        Float f3 = this.left;
        int iHashCode3 = (iHashCode2 + (f3 != null ? f3.hashCode() : 0)) * 37;
        Float f4 = this.bottom;
        int iHashCode4 = (iHashCode3 + (f4 != null ? f4.hashCode() : 0)) * 37;
        Float f5 = this.right;
        int iHashCode5 = iHashCode4 + (f5 != null ? f5.hashCode() : 0);
        this.hashCode = iHashCode5;
        return iHashCode5;
    }

    @Override // com.czhj.wire.Message
    public String toString() {
        StringBuilder sb = new StringBuilder();
        if (this.top != null) {
            sb.append(", top=");
            sb.append(this.top);
        }
        if (this.left != null) {
            sb.append(", left=");
            sb.append(this.left);
        }
        if (this.bottom != null) {
            sb.append(", bottom=");
            sb.append(this.bottom);
        }
        if (this.right != null) {
            sb.append(", right=");
            sb.append(this.right);
        }
        StringBuilder sbReplace = sb.replace(0, 2, "ClickAreaSetting{");
        sbReplace.append('}');
        return sbReplace.toString();
    }

    public ClickAreaSetting(Float f2, Float f3, Float f4, Float f5, ByteString byteString) {
        super(ADAPTER, byteString);
        this.top = f2;
        this.left = f3;
        this.bottom = f4;
        this.right = f5;
    }

    @Override // com.czhj.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.top = this.top;
        builder.left = this.left;
        builder.bottom = this.bottom;
        builder.right = this.right;
        builder.addUnknownFields(unknownFields());
        return builder;
    }
}
