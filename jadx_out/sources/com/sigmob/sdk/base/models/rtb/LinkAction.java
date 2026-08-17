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
public final class LinkAction extends AndroidMessage<LinkAction, Builder> {
    public static final ProtoAdapter<LinkAction> ADAPTER;
    public static final Parcelable.Creator<LinkAction> CREATOR;
    public static final String DEFAULT_HOST = "";
    public static final Integer DEFAULT_REDIRECT_COUNT;
    public static final String DEFAULT_scheme = "";
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 2)
    public final String host;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", tag = 3)
    public final Integer redirect_count;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 1)
    public final String scheme;

    public static final class Builder extends Message.Builder<LinkAction, Builder> {
        public String host;
        public Integer redirect_count = LinkAction.DEFAULT_REDIRECT_COUNT;
        public String scheme;

        public Builder host(String str) {
            this.host = str;
            return this;
        }

        public Builder redirect_count(Integer num) {
            this.redirect_count = num;
            return this;
        }

        public Builder scheme(String str) {
            this.scheme = str;
            return this;
        }

        @Override // com.czhj.wire.Message.Builder
        public LinkAction build() {
            return new LinkAction(this.scheme, this.host, this.redirect_count, super.buildUnknownFields());
        }
    }

    public static final class ProtoAdapter_LinkAction extends ProtoAdapter<LinkAction> {
        public ProtoAdapter_LinkAction() {
            super(FieldEncoding.LENGTH_DELIMITED, LinkAction.class);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.czhj.wire.ProtoAdapter
        public LinkAction decode(ProtoReader protoReader) throws IOException {
            Builder builder = new Builder();
            long jBeginMessage = protoReader.beginMessage();
            while (true) {
                int iNextTag = protoReader.nextTag();
                if (iNextTag == -1) {
                    protoReader.endMessage(jBeginMessage);
                    return builder.build();
                }
                if (iNextTag == 1) {
                    builder.scheme(ProtoAdapter.STRING.decode(protoReader));
                } else if (iNextTag == 2) {
                    builder.host(ProtoAdapter.STRING.decode(protoReader));
                } else if (iNextTag != 3) {
                    FieldEncoding fieldEncodingPeekFieldEncoding = protoReader.peekFieldEncoding();
                    builder.addUnknownField(iNextTag, fieldEncodingPeekFieldEncoding, fieldEncodingPeekFieldEncoding.rawProtoAdapter().decode(protoReader));
                } else {
                    builder.redirect_count(ProtoAdapter.INT32.decode(protoReader));
                }
            }
        }

        @Override // com.czhj.wire.ProtoAdapter
        public void encode(ProtoWriter protoWriter, LinkAction linkAction) throws IOException {
            ProtoAdapter<String> protoAdapter = ProtoAdapter.STRING;
            protoAdapter.encodeWithTag(protoWriter, 1, linkAction.scheme);
            protoAdapter.encodeWithTag(protoWriter, 2, linkAction.host);
            ProtoAdapter.INT32.encodeWithTag(protoWriter, 3, linkAction.redirect_count);
            protoWriter.writeBytes(linkAction.unknownFields());
        }

        @Override // com.czhj.wire.ProtoAdapter
        public int encodedSize(LinkAction linkAction) {
            ProtoAdapter<String> protoAdapter = ProtoAdapter.STRING;
            return protoAdapter.encodedSizeWithTag(1, linkAction.scheme) + protoAdapter.encodedSizeWithTag(2, linkAction.host) + ProtoAdapter.INT32.encodedSizeWithTag(3, linkAction.redirect_count) + linkAction.unknownFields().size();
        }

        @Override // com.czhj.wire.ProtoAdapter
        public LinkAction redact(LinkAction linkAction) {
            Builder builderNewBuilder = linkAction.newBuilder();
            builderNewBuilder.clearUnknownFields();
            return builderNewBuilder.build();
        }
    }

    static {
        ProtoAdapter_LinkAction protoAdapter_LinkAction = new ProtoAdapter_LinkAction();
        ADAPTER = protoAdapter_LinkAction;
        CREATOR = AndroidMessage.newCreator(protoAdapter_LinkAction);
        DEFAULT_REDIRECT_COUNT = 0;
    }

    public LinkAction(String str, String str2, Integer num) {
        this(str, str2, num, ByteString.EMPTY);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof LinkAction)) {
            return false;
        }
        LinkAction linkAction = (LinkAction) obj;
        return unknownFields().equals(linkAction.unknownFields()) && Internal.equals(this.scheme, linkAction.scheme) && Internal.equals(this.host, linkAction.host) && Internal.equals(this.redirect_count, linkAction.redirect_count);
    }

    public int hashCode() {
        int i2 = this.hashCode;
        if (i2 != 0) {
            return i2;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        String str = this.scheme;
        int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 37;
        String str2 = this.host;
        int iHashCode3 = (iHashCode2 + (str2 != null ? str2.hashCode() : 0)) * 37;
        Integer num = this.redirect_count;
        int iHashCode4 = iHashCode3 + (num != null ? num.hashCode() : 0);
        this.hashCode = iHashCode4;
        return iHashCode4;
    }

    @Override // com.czhj.wire.Message
    public String toString() {
        StringBuilder sb = new StringBuilder();
        if (this.scheme != null) {
            sb.append(", scheme=");
            sb.append(this.scheme);
        }
        if (this.host != null) {
            sb.append(", host=");
            sb.append(this.host);
        }
        if (this.redirect_count != null) {
            sb.append(", redirect_count=");
            sb.append(this.redirect_count);
        }
        StringBuilder sbReplace = sb.replace(0, 2, "LinkAction{");
        sbReplace.append('}');
        return sbReplace.toString();
    }

    public LinkAction(String str, String str2, Integer num, ByteString byteString) {
        super(ADAPTER, byteString);
        this.scheme = str;
        this.host = str2;
        this.redirect_count = num;
    }

    @Override // com.czhj.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.scheme = this.scheme;
        builder.host = this.host;
        builder.redirect_count = this.redirect_count;
        builder.addUnknownFields(unknownFields());
        return builder;
    }
}
