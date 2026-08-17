package defpackage;

import com.anythink.core.common.d.i;
import defpackage.f;
import io.flutter.plugin.common.BasicMessageChannel;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MessageCodec;
import java.util.List;
import kotlin.c;
import kotlin.collections.p;
import kotlin.d;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.j;

/* loaded from: classes2.dex */
public interface f {

    /* renamed from: a, reason: collision with root package name */
    public static final a f50687a = a.f50688a;

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ a f50688a = new a();

        /* renamed from: b, reason: collision with root package name */
        public static final c f50689b = d.b(new Function0() { // from class: c
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return f.a.d();
            }
        });

        public static final g d() {
            return new g();
        }

        public static /* synthetic */ void g(a aVar, BinaryMessenger binaryMessenger, f fVar, String str, int i2, Object obj) {
            if ((i2 & 4) != 0) {
                str = "";
            }
            aVar.f(binaryMessenger, fVar, str);
        }

        public static final void h(f fVar, Object obj, BasicMessageChannel.Reply reply) {
            List listB;
            j.e(reply, "reply");
            j.c(obj, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any?>");
            Object obj2 = ((List) obj).get(0);
            j.c(obj2, "null cannot be cast to non-null type <root>.ToggleMessage");
            try {
                fVar.a((b) obj2);
                listB = p.e(null);
            } catch (Throwable th) {
                listB = h.f50717a.b(th);
            }
            reply.reply(listB);
        }

        public static final void i(f fVar, Object obj, BasicMessageChannel.Reply reply) {
            List listB;
            j.e(reply, "reply");
            try {
                listB = p.e(fVar.isEnabled());
            } catch (Throwable th) {
                listB = h.f50717a.b(th);
            }
            reply.reply(listB);
        }

        public final MessageCodec e() {
            return (MessageCodec) f50689b.getValue();
        }

        public final void f(BinaryMessenger binaryMessenger, final f fVar, String messageChannelSuffix) {
            String str;
            j.e(binaryMessenger, "binaryMessenger");
            j.e(messageChannelSuffix, "messageChannelSuffix");
            if (messageChannelSuffix.length() > 0) {
                str = i.f2495E + messageChannelSuffix;
            } else {
                str = "";
            }
            BasicMessageChannel basicMessageChannel = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.wakelock_plus_platform_interface.WakelockPlusApi.toggle" + str, e());
            if (fVar != null) {
                basicMessageChannel.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: d
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        f.a.h(fVar, obj, reply);
                    }
                });
            } else {
                basicMessageChannel.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel2 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.wakelock_plus_platform_interface.WakelockPlusApi.isEnabled" + str, e());
            if (fVar != null) {
                basicMessageChannel2.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: e
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        f.a.i(fVar, obj, reply);
                    }
                });
            } else {
                basicMessageChannel2.setMessageHandler(null);
            }
        }
    }

    void a(b bVar);

    defpackage.a isEnabled();
}
