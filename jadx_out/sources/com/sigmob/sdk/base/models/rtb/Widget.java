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
public final class Widget extends AndroidMessage<Widget, Builder> {
    public static final ProtoAdapter<Widget> ADAPTER;
    public static final Parcelable.Creator<Widget> CREATOR;
    public static final Boolean DEFAULT_ENABLE_DEVELOPER_RENDER;
    public static final Long DEFAULT_WIDGET_ID;
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", tag = 2)
    public final Boolean enable_developer_render;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT64", tag = 1)
    public final Long widget_id;

    public static final class Builder extends Message.Builder<Widget, Builder> {
        public Long widget_id = Widget.DEFAULT_WIDGET_ID;
        public Boolean enable_developer_render = Widget.DEFAULT_ENABLE_DEVELOPER_RENDER;

        public Builder enable_developer_render(Boolean bool) {
            this.enable_developer_render = bool;
            return this;
        }

        public Builder widget_id(Long l2) {
            this.widget_id = l2;
            return this;
        }

        @Override // com.czhj.wire.Message.Builder
        public Widget build() {
            return new Widget(this.widget_id, this.enable_developer_render, super.buildUnknownFields());
        }
    }

    public static final class ProtoAdapter_Widget extends ProtoAdapter<Widget> {
        public ProtoAdapter_Widget() {
            super(FieldEncoding.LENGTH_DELIMITED, Widget.class);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.czhj.wire.ProtoAdapter
        public Widget decode(ProtoReader protoReader) throws IOException {
            Builder builder = new Builder();
            long jBeginMessage = protoReader.beginMessage();
            while (true) {
                int iNextTag = protoReader.nextTag();
                if (iNextTag == -1) {
                    protoReader.endMessage(jBeginMessage);
                    return builder.build();
                }
                if (iNextTag == 1) {
                    builder.widget_id(ProtoAdapter.UINT64.decode(protoReader));
                } else if (iNextTag != 2) {
                    FieldEncoding fieldEncodingPeekFieldEncoding = protoReader.peekFieldEncoding();
                    builder.addUnknownField(iNextTag, fieldEncodingPeekFieldEncoding, fieldEncodingPeekFieldEncoding.rawProtoAdapter().decode(protoReader));
                } else {
                    builder.enable_developer_render(ProtoAdapter.BOOL.decode(protoReader));
                }
            }
        }

        @Override // com.czhj.wire.ProtoAdapter
        public void encode(ProtoWriter protoWriter, Widget widget) throws IOException {
            ProtoAdapter.UINT64.encodeWithTag(protoWriter, 1, widget.widget_id);
            ProtoAdapter.BOOL.encodeWithTag(protoWriter, 2, widget.enable_developer_render);
            protoWriter.writeBytes(widget.unknownFields());
        }

        @Override // com.czhj.wire.ProtoAdapter
        public int encodedSize(Widget widget) {
            return ProtoAdapter.UINT64.encodedSizeWithTag(1, widget.widget_id) + ProtoAdapter.BOOL.encodedSizeWithTag(2, widget.enable_developer_render) + widget.unknownFields().size();
        }

        @Override // com.czhj.wire.ProtoAdapter
        public Widget redact(Widget widget) {
            Builder builderNewBuilder = widget.newBuilder();
            builderNewBuilder.clearUnknownFields();
            return builderNewBuilder.build();
        }
    }

    static {
        ProtoAdapter_Widget protoAdapter_Widget = new ProtoAdapter_Widget();
        ADAPTER = protoAdapter_Widget;
        CREATOR = AndroidMessage.newCreator(protoAdapter_Widget);
        DEFAULT_WIDGET_ID = 0L;
        DEFAULT_ENABLE_DEVELOPER_RENDER = Boolean.FALSE;
    }

    public Widget(Long l2, Boolean bool) {
        this(l2, bool, ByteString.EMPTY);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Widget)) {
            return false;
        }
        Widget widget = (Widget) obj;
        return unknownFields().equals(widget.unknownFields()) && Internal.equals(this.widget_id, widget.widget_id) && Internal.equals(this.enable_developer_render, widget.enable_developer_render);
    }

    public int hashCode() {
        int i2 = this.hashCode;
        if (i2 != 0) {
            return i2;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        Long l2 = this.widget_id;
        int iHashCode2 = (iHashCode + (l2 != null ? l2.hashCode() : 0)) * 37;
        Boolean bool = this.enable_developer_render;
        int iHashCode3 = iHashCode2 + (bool != null ? bool.hashCode() : 0);
        this.hashCode = iHashCode3;
        return iHashCode3;
    }

    @Override // com.czhj.wire.Message
    public String toString() {
        StringBuilder sb = new StringBuilder();
        if (this.widget_id != null) {
            sb.append(", widget_id=");
            sb.append(this.widget_id);
        }
        if (this.enable_developer_render != null) {
            sb.append(", enable_developer_render=");
            sb.append(this.enable_developer_render);
        }
        StringBuilder sbReplace = sb.replace(0, 2, "Widget{");
        sbReplace.append('}');
        return sbReplace.toString();
    }

    public Widget(Long l2, Boolean bool, ByteString byteString) {
        super(ADAPTER, byteString);
        this.widget_id = l2;
        this.enable_developer_render = bool;
    }

    @Override // com.czhj.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.widget_id = this.widget_id;
        builder.enable_developer_render = this.enable_developer_render;
        builder.addUnknownFields(unknownFields());
        return builder;
    }
}
