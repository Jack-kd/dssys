package okio;

import androidx.core.location.LocationRequestCompat;
import com.anythink.core.common.f.f;
import com.bykv.vk.component.ttvideo.player.C;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.kwad.components.offline.api.tk.model.report.TKDownloadReason;
import com.umeng.analytics.pro.ek;
import io.flutter.embedding.android.KeyboardMap;
import io.flutter.plugin.editing.SpellCheckPlugin;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.charset.Charset;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmName;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.C1624d;
import okhttp3.internal.connection.RealConnection;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000°\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u001a\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u001a\n\u0002\u0010\u0005\n\u0002\b\u0006\n\u0002\u0010\n\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0012\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u0000\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0010\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0002Î\u0001B\u0007¢\u0006\u0004\b\u0005\u0010\u0006J'\u0010\u000e\u001a\u00020\r2\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u001f\u0010\u0016\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0015\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0000H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001b\u001a\u00020\u001aH\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u000f\u0010\u001d\u001a\u00020\u0000H\u0016¢\u0006\u0004\b\u001d\u0010\u0019J\u000f\u0010\u001e\u001a\u00020\u0000H\u0016¢\u0006\u0004\b\u001e\u0010\u0019J\u000f\u0010\u001f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u001f\u0010 J\u0017\u0010!\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b!\u0010\"J\u0017\u0010#\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b#\u0010$J\u000f\u0010%\u001a\u00020\u0001H\u0016¢\u0006\u0004\b%\u0010&J\u000f\u0010'\u001a\u00020\u0007H\u0016¢\u0006\u0004\b'\u0010(J+\u0010+\u001a\u00020\u00002\u0006\u0010)\u001a\u00020\u001a2\b\b\u0002\u0010*\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\tH\u0007¢\u0006\u0004\b+\u0010,J'\u0010+\u001a\u00020\u00002\u0006\u0010)\u001a\u00020\u00002\b\b\u0002\u0010*\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b+\u0010-J\u001f\u0010+\u001a\u00020\u00002\u0006\u0010)\u001a\u00020\u00002\b\b\u0002\u0010*\u001a\u00020\t¢\u0006\u0004\b+\u0010.J!\u0010/\u001a\u00020\u00002\u0006\u0010)\u001a\u00020\u001a2\b\b\u0002\u0010\n\u001a\u00020\tH\u0007¢\u0006\u0004\b/\u00100J\u0015\u0010\u000e\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\u000e\u00101J\u001d\u0010\u000e\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000e\u00102J\r\u00103\u001a\u00020\t¢\u0006\u0004\b3\u00104J\u000f\u00106\u001a\u000205H\u0016¢\u0006\u0004\b6\u00107J\u0018\u0010;\u001a\u0002052\u0006\u00108\u001a\u00020\tH\u0087\u0002¢\u0006\u0004\b9\u0010:J\u000f\u0010=\u001a\u00020<H\u0016¢\u0006\u0004\b=\u0010>J\u000f\u0010@\u001a\u00020?H\u0016¢\u0006\u0004\b@\u0010AJ\u000f\u0010B\u001a\u00020\tH\u0016¢\u0006\u0004\bB\u00104J\u000f\u0010C\u001a\u00020<H\u0016¢\u0006\u0004\bC\u0010>J\u000f\u0010D\u001a\u00020?H\u0016¢\u0006\u0004\bD\u0010AJ\u000f\u0010E\u001a\u00020\tH\u0016¢\u0006\u0004\bE\u00104J\u000f\u0010F\u001a\u00020\tH\u0016¢\u0006\u0004\bF\u00104J\u000f\u0010G\u001a\u00020\tH\u0016¢\u0006\u0004\bG\u00104J\u000f\u0010H\u001a\u00020\u0012H\u0016¢\u0006\u0004\bH\u0010IJ\u0017\u0010H\u001a\u00020\u00122\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\bH\u0010JJ\u0017\u0010M\u001a\u00020?2\u0006\u0010L\u001a\u00020KH\u0016¢\u0006\u0004\bM\u0010NJ\u001f\u0010P\u001a\u00020\r2\u0006\u0010O\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\bP\u0010QJ\u0017\u0010S\u001a\u00020\t2\u0006\u0010O\u001a\u00020RH\u0016¢\u0006\u0004\bS\u0010TJ\u000f\u0010U\u001a\u00020\u0010H\u0016¢\u0006\u0004\bU\u0010VJ\u0017\u0010U\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\bU\u0010WJ\u0017\u0010Z\u001a\u00020\u00102\u0006\u0010Y\u001a\u00020XH\u0016¢\u0006\u0004\bZ\u0010[J\u001f\u0010Z\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\t2\u0006\u0010Y\u001a\u00020XH\u0016¢\u0006\u0004\bZ\u0010\\J\u0011\u0010]\u001a\u0004\u0018\u00010\u0010H\u0016¢\u0006\u0004\b]\u0010VJ\u000f\u0010^\u001a\u00020\u0010H\u0016¢\u0006\u0004\b^\u0010VJ\u0017\u0010^\u001a\u00020\u00102\u0006\u0010_\u001a\u00020\tH\u0016¢\u0006\u0004\b^\u0010WJ\u000f\u0010`\u001a\u00020?H\u0016¢\u0006\u0004\b`\u0010AJ\u000f\u0010b\u001a\u00020aH\u0016¢\u0006\u0004\bb\u0010cJ\u0017\u0010b\u001a\u00020a2\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\bb\u0010dJ\u0017\u0010e\u001a\u00020?2\u0006\u0010O\u001a\u00020aH\u0016¢\u0006\u0004\be\u0010fJ\u0017\u0010P\u001a\u00020\r2\u0006\u0010O\u001a\u00020aH\u0016¢\u0006\u0004\bP\u0010gJ'\u0010e\u001a\u00020?2\u0006\u0010O\u001a\u00020a2\u0006\u0010*\u001a\u00020?2\u0006\u0010\n\u001a\u00020?H\u0016¢\u0006\u0004\be\u0010hJ\u0017\u0010e\u001a\u00020?2\u0006\u0010O\u001a\u00020iH\u0016¢\u0006\u0004\be\u0010jJ\r\u0010k\u001a\u00020\r¢\u0006\u0004\bk\u0010\u0006J\u0017\u0010l\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\bl\u0010\"J\u0017\u0010n\u001a\u00020\u00002\u0006\u0010m\u001a\u00020\u0012H\u0016¢\u0006\u0004\bn\u0010oJ'\u0010n\u001a\u00020\u00002\u0006\u0010m\u001a\u00020\u00122\u0006\u0010*\u001a\u00020?2\u0006\u0010\n\u001a\u00020?H\u0016¢\u0006\u0004\bn\u0010pJ\u0017\u0010r\u001a\u00020\u00002\u0006\u0010q\u001a\u00020\u0010H\u0016¢\u0006\u0004\br\u0010sJ'\u0010r\u001a\u00020\u00002\u0006\u0010q\u001a\u00020\u00102\u0006\u0010t\u001a\u00020?2\u0006\u0010u\u001a\u00020?H\u0016¢\u0006\u0004\br\u0010vJ\u0017\u0010x\u001a\u00020\u00002\u0006\u0010w\u001a\u00020?H\u0016¢\u0006\u0004\bx\u0010yJ\u001f\u0010z\u001a\u00020\u00002\u0006\u0010q\u001a\u00020\u00102\u0006\u0010Y\u001a\u00020XH\u0016¢\u0006\u0004\bz\u0010{J/\u0010z\u001a\u00020\u00002\u0006\u0010q\u001a\u00020\u00102\u0006\u0010t\u001a\u00020?2\u0006\u0010u\u001a\u00020?2\u0006\u0010Y\u001a\u00020XH\u0016¢\u0006\u0004\bz\u0010|J\u0017\u0010n\u001a\u00020\u00002\u0006\u0010}\u001a\u00020aH\u0016¢\u0006\u0004\bn\u0010~J'\u0010n\u001a\u00020\u00002\u0006\u0010}\u001a\u00020a2\u0006\u0010*\u001a\u00020?2\u0006\u0010\n\u001a\u00020?H\u0016¢\u0006\u0004\bn\u0010\u007fJ\u0017\u0010n\u001a\u00020?2\u0006\u0010}\u001a\u00020iH\u0016¢\u0006\u0004\bn\u0010jJ\u001b\u0010\u0081\u0001\u001a\u00020\t2\u0007\u0010}\u001a\u00030\u0080\u0001H\u0016¢\u0006\u0006\b\u0081\u0001\u0010\u0082\u0001J!\u0010n\u001a\u00020\u00002\u0007\u0010}\u001a\u00030\u0080\u00012\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0005\bn\u0010\u0083\u0001J\u001a\u0010\u0085\u0001\u001a\u00020\u00002\u0007\u0010\u0084\u0001\u001a\u00020?H\u0016¢\u0006\u0005\b\u0085\u0001\u0010yJ\u001a\u0010\u0087\u0001\u001a\u00020\u00002\u0007\u0010\u0086\u0001\u001a\u00020?H\u0016¢\u0006\u0005\b\u0087\u0001\u0010yJ\u001a\u0010\u0088\u0001\u001a\u00020\u00002\u0007\u0010\u0086\u0001\u001a\u00020?H\u0016¢\u0006\u0005\b\u0088\u0001\u0010yJ\u001a\u0010\u008a\u0001\u001a\u00020\u00002\u0007\u0010\u0089\u0001\u001a\u00020?H\u0016¢\u0006\u0005\b\u008a\u0001\u0010yJ\u001a\u0010\u008b\u0001\u001a\u00020\u00002\u0007\u0010\u0089\u0001\u001a\u00020?H\u0016¢\u0006\u0005\b\u008b\u0001\u0010yJ\u001b\u0010\u008d\u0001\u001a\u00020\u00002\u0007\u0010\u008c\u0001\u001a\u00020\tH\u0016¢\u0006\u0006\b\u008d\u0001\u0010\u008e\u0001J\u001b\u0010\u008f\u0001\u001a\u00020\u00002\u0007\u0010\u008c\u0001\u001a\u00020\tH\u0016¢\u0006\u0006\b\u008f\u0001\u0010\u008e\u0001J\u001b\u0010\u0090\u0001\u001a\u00020\u00002\u0007\u0010\u008c\u0001\u001a\u00020\tH\u0016¢\u0006\u0006\b\u0090\u0001\u0010\u008e\u0001J\u001b\u0010\u0091\u0001\u001a\u00020\u00002\u0007\u0010\u008c\u0001\u001a\u00020\tH\u0016¢\u0006\u0006\b\u0091\u0001\u0010\u008e\u0001J\u001c\u0010\u0096\u0001\u001a\u00030\u0093\u00012\u0007\u0010\u0092\u0001\u001a\u00020?H\u0000¢\u0006\u0006\b\u0094\u0001\u0010\u0095\u0001J\u001f\u0010n\u001a\u00020\r2\u0006\u0010}\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\bn\u0010QJ \u0010e\u001a\u00020\t2\u0006\u0010O\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0005\be\u0010\u0097\u0001J\u001b\u0010\u0098\u0001\u001a\u00020\t2\u0007\u0010\u0084\u0001\u001a\u000205H\u0016¢\u0006\u0006\b\u0098\u0001\u0010\u0099\u0001J$\u0010\u0098\u0001\u001a\u00020\t2\u0007\u0010\u0084\u0001\u001a\u0002052\u0007\u0010\u009a\u0001\u001a\u00020\tH\u0016¢\u0006\u0006\b\u0098\u0001\u0010\u009b\u0001J-\u0010\u0098\u0001\u001a\u00020\t2\u0007\u0010\u0084\u0001\u001a\u0002052\u0007\u0010\u009a\u0001\u001a\u00020\t2\u0007\u0010\u009c\u0001\u001a\u00020\tH\u0016¢\u0006\u0006\b\u0098\u0001\u0010\u009d\u0001J\u001b\u0010\u0098\u0001\u001a\u00020\t2\u0007\u0010\u009e\u0001\u001a\u00020\u0012H\u0016¢\u0006\u0006\b\u0098\u0001\u0010\u009f\u0001J$\u0010\u0098\u0001\u001a\u00020\t2\u0007\u0010\u009e\u0001\u001a\u00020\u00122\u0007\u0010\u009a\u0001\u001a\u00020\tH\u0016¢\u0006\u0006\b\u0098\u0001\u0010 \u0001J\u001b\u0010¢\u0001\u001a\u00020\t2\u0007\u0010¡\u0001\u001a\u00020\u0012H\u0016¢\u0006\u0006\b¢\u0001\u0010\u009f\u0001J$\u0010¢\u0001\u001a\u00020\t2\u0007\u0010¡\u0001\u001a\u00020\u00122\u0007\u0010\u009a\u0001\u001a\u00020\tH\u0016¢\u0006\u0006\b¢\u0001\u0010 \u0001J#\u0010£\u0001\u001a\u00020\u000b2\u0006\u0010*\u001a\u00020\t2\u0007\u0010\u009e\u0001\u001a\u00020\u0012H\u0016¢\u0006\u0006\b£\u0001\u0010¤\u0001J4\u0010£\u0001\u001a\u00020\u000b2\u0006\u0010*\u001a\u00020\t2\u0007\u0010\u009e\u0001\u001a\u00020\u00122\u0007\u0010¥\u0001\u001a\u00020?2\u0006\u0010\n\u001a\u00020?H\u0016¢\u0006\u0006\b£\u0001\u0010¦\u0001J\u0011\u0010§\u0001\u001a\u00020\rH\u0016¢\u0006\u0005\b§\u0001\u0010\u0006J\u0011\u0010¨\u0001\u001a\u00020\u000bH\u0016¢\u0006\u0005\b¨\u0001\u0010 J\u0011\u0010©\u0001\u001a\u00020\rH\u0016¢\u0006\u0005\b©\u0001\u0010\u0006J\u0013\u0010«\u0001\u001a\u00030ª\u0001H\u0016¢\u0006\u0006\b«\u0001\u0010¬\u0001J\u000f\u0010\u00ad\u0001\u001a\u00020\u0012¢\u0006\u0005\b\u00ad\u0001\u0010IJ\u000f\u0010®\u0001\u001a\u00020\u0012¢\u0006\u0005\b®\u0001\u0010IJ\u000f\u0010¯\u0001\u001a\u00020\u0012¢\u0006\u0005\b¯\u0001\u0010IJ\u000f\u0010°\u0001\u001a\u00020\u0012¢\u0006\u0005\b°\u0001\u0010IJ\u0018\u0010±\u0001\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0012¢\u0006\u0006\b±\u0001\u0010²\u0001J\u0018\u0010³\u0001\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0012¢\u0006\u0006\b³\u0001\u0010²\u0001J\u0018\u0010´\u0001\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0012¢\u0006\u0006\b´\u0001\u0010²\u0001J\u001f\u0010·\u0001\u001a\u00020\u000b2\n\u0010¶\u0001\u001a\u0005\u0018\u00010µ\u0001H\u0096\u0002¢\u0006\u0006\b·\u0001\u0010¸\u0001J\u0011\u0010¹\u0001\u001a\u00020?H\u0016¢\u0006\u0005\b¹\u0001\u0010AJ\u0011\u0010º\u0001\u001a\u00020\u0010H\u0016¢\u0006\u0005\bº\u0001\u0010VJ\u000f\u0010»\u0001\u001a\u00020\u0000¢\u0006\u0005\b»\u0001\u0010\u0019J\u0011\u0010¼\u0001\u001a\u00020\u0000H\u0016¢\u0006\u0005\b¼\u0001\u0010\u0019J\u000f\u0010½\u0001\u001a\u00020\u0012¢\u0006\u0005\b½\u0001\u0010IJ\u0018\u0010½\u0001\u001a\u00020\u00122\u0006\u0010\n\u001a\u00020?¢\u0006\u0006\b½\u0001\u0010¾\u0001J\u001f\u0010Á\u0001\u001a\u00030¿\u00012\n\b\u0002\u0010À\u0001\u001a\u00030¿\u0001H\u0007¢\u0006\u0006\bÁ\u0001\u0010Â\u0001J\u001f\u0010Ã\u0001\u001a\u00030¿\u00012\n\b\u0002\u0010À\u0001\u001a\u00030¿\u0001H\u0007¢\u0006\u0006\bÃ\u0001\u0010Â\u0001J\u0019\u00109\u001a\u0002052\u0007\u0010Ä\u0001\u001a\u00020\tH\u0007¢\u0006\u0005\bÅ\u0001\u0010:J\u0011\u0010Ç\u0001\u001a\u00020\tH\u0007¢\u0006\u0005\bÆ\u0001\u00104R\u001c\u0010È\u0001\u001a\u0005\u0018\u00010\u0093\u00018\u0000@\u0000X\u0081\u000e¢\u0006\b\n\u0006\bÈ\u0001\u0010É\u0001R0\u0010Ç\u0001\u001a\u00020\t2\u0007\u0010Ê\u0001\u001a\u00020\t8G@@X\u0086\u000e¢\u0006\u0016\n\u0006\bÇ\u0001\u0010Ë\u0001\u001a\u0005\bÇ\u0001\u00104\"\u0005\bÌ\u0001\u0010\"R\u0015\u0010\u0018\u001a\u00020\u00008VX\u0096\u0004¢\u0006\u0007\u001a\u0005\bÍ\u0001\u0010\u0019¨\u0006Ï\u0001"}, d2 = {"Lokio/Buffer;", "Lokio/BufferedSource;", "Lokio/BufferedSink;", "", "Ljava/nio/channels/ByteChannel;", "<init>", "()V", "Ljava/io/InputStream;", "input", "", "byteCount", "", "forever", "Lkotlin/j;", "readFrom", "(Ljava/io/InputStream;JZ)V", "", "algorithm", "Lokio/ByteString;", "digest", "(Ljava/lang/String;)Lokio/ByteString;", f.a.f3242b, "hmac", "(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;", "buffer", "()Lokio/Buffer;", "Ljava/io/OutputStream;", "outputStream", "()Ljava/io/OutputStream;", "emitCompleteSegments", "emit", "exhausted", "()Z", "require", "(J)V", "request", "(J)Z", "peek", "()Lokio/BufferedSource;", "inputStream", "()Ljava/io/InputStream;", "out", "offset", "copyTo", "(Ljava/io/OutputStream;JJ)Lokio/Buffer;", "(Lokio/Buffer;JJ)Lokio/Buffer;", "(Lokio/Buffer;J)Lokio/Buffer;", "writeTo", "(Ljava/io/OutputStream;J)Lokio/Buffer;", "(Ljava/io/InputStream;)Lokio/Buffer;", "(Ljava/io/InputStream;J)Lokio/Buffer;", "completeSegmentByteCount", "()J", "", "readByte", "()B", "pos", "getByte", "(J)B", "get", "", "readShort", "()S", "", "readInt", "()I", "readLong", "readShortLe", "readIntLe", "readLongLe", "readDecimalLong", "readHexadecimalUnsignedLong", "readByteString", "()Lokio/ByteString;", "(J)Lokio/ByteString;", "Lokio/Options;", "options", "select", "(Lokio/Options;)I", "sink", "readFully", "(Lokio/Buffer;J)V", "Lokio/Sink;", "readAll", "(Lokio/Sink;)J", "readUtf8", "()Ljava/lang/String;", "(J)Ljava/lang/String;", "Ljava/nio/charset/Charset;", "charset", "readString", "(Ljava/nio/charset/Charset;)Ljava/lang/String;", "(JLjava/nio/charset/Charset;)Ljava/lang/String;", "readUtf8Line", "readUtf8LineStrict", "limit", "readUtf8CodePoint", "", "readByteArray", "()[B", "(J)[B", "read", "([B)I", "([B)V", "([BII)I", "Ljava/nio/ByteBuffer;", "(Ljava/nio/ByteBuffer;)I", "clear", "skip", "byteString", "write", "(Lokio/ByteString;)Lokio/Buffer;", "(Lokio/ByteString;II)Lokio/Buffer;", "string", "writeUtf8", "(Ljava/lang/String;)Lokio/Buffer;", "beginIndex", SpellCheckPlugin.END_INDEX_KEY, "(Ljava/lang/String;II)Lokio/Buffer;", "codePoint", "writeUtf8CodePoint", "(I)Lokio/Buffer;", "writeString", "(Ljava/lang/String;Ljava/nio/charset/Charset;)Lokio/Buffer;", "(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/Buffer;", com.sigmob.sdk.base.n.f36449l, "([B)Lokio/Buffer;", "([BII)Lokio/Buffer;", "Lokio/Source;", "writeAll", "(Lokio/Source;)J", "(Lokio/Source;J)Lokio/Buffer;", "b", "writeByte", "s", "writeShort", "writeShortLe", "i", "writeInt", "writeIntLe", "v", "writeLong", "(J)Lokio/Buffer;", "writeLongLe", "writeDecimalLong", "writeHexadecimalUnsignedLong", "minimumCapacity", "Lokio/Segment;", "writableSegment$okio", "(I)Lokio/Segment;", "writableSegment", "(Lokio/Buffer;J)J", "indexOf", "(B)J", "fromIndex", "(BJ)J", "toIndex", "(BJJ)J", "bytes", "(Lokio/ByteString;)J", "(Lokio/ByteString;J)J", "targetBytes", "indexOfElement", "rangeEquals", "(JLokio/ByteString;)Z", "bytesOffset", "(JLokio/ByteString;II)Z", "flush", "isOpen", "close", "Lokio/Timeout;", "timeout", "()Lokio/Timeout;", TKDownloadReason.KSAD_TK_MD5, "sha1", "sha256", "sha512", "hmacSha1", "(Lokio/ByteString;)Lokio/ByteString;", "hmacSha256", "hmacSha512", "", "other", "equals", "(Ljava/lang/Object;)Z", "hashCode", "toString", "copy", "clone", "snapshot", "(I)Lokio/ByteString;", "Lokio/Buffer$UnsafeCursor;", "unsafeCursor", "readUnsafe", "(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;", "readAndWriteUnsafe", com.umeng.ccg.a.f49746H, "-deprecated_getByte", "-deprecated_size", "size", "head", "Lokio/Segment;", "<set-?>", "J", "setSize$okio", "getBuffer", "UnsafeCursor", "okio"}, k = 1, mv = {1, 9, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nBuffer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Buffer.kt\nokio/Buffer\n+ 2 Util.kt\nokio/-SegmentedByteString\n+ 3 Buffer.kt\nokio/internal/-Buffer\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,641:1\n89#2:642\n86#2:675\n86#2:677\n74#2:737\n74#2:763\n83#2:802\n77#2:813\n89#2:1003\n74#2:1018\n86#2:1122\n89#2:1615\n244#3,32:643\n279#3,10:678\n292#3,18:688\n414#3,2:706\n112#3:708\n416#3:709\n114#3,18:710\n313#3,9:728\n322#3,15:738\n340#3,10:753\n350#3,3:764\n348#3,25:767\n376#3,10:792\n386#3:803\n384#3,9:804\n393#3,7:814\n391#3,20:821\n682#3,60:841\n745#3,56:901\n803#3:957\n806#3:958\n807#3,6:960\n817#3,7:966\n827#3,6:973\n835#3,5:979\n867#3,6:984\n877#3:990\n878#3,11:992\n889#3,5:1004\n898#3,9:1009\n908#3,61:1019\n633#3:1080\n636#3:1081\n637#3,5:1083\n644#3:1088\n647#3,7:1089\n656#3,20:1096\n420#3:1116\n423#3,5:1117\n428#3,10:1123\n439#3,7:1133\n444#3,2:1140\n973#3:1142\n974#3,87:1144\n1064#3,48:1231\n603#3:1279\n610#3,21:1280\n1115#3,7:1301\n1125#3,7:1308\n1135#3,4:1315\n1142#3,8:1319\n1153#3,10:1327\n1166#3,14:1337\n449#3,91:1351\n543#3,40:1442\n586#3:1482\n588#3,13:1484\n1183#3:1497\n1234#3:1498\n1235#3,39:1500\n1276#3,2:1539\n1278#3,4:1542\n1285#3,3:1546\n1289#3,4:1550\n112#3:1554\n1293#3,22:1555\n114#3,18:1577\n1319#3,2:1595\n1321#3,3:1598\n112#3:1601\n1324#3,13:1602\n1337#3,13:1616\n114#3,18:1629\n1354#3,2:1647\n1357#3:1650\n112#3:1651\n1358#3,50:1652\n114#3,18:1702\n1417#3,14:1720\n1434#3,32:1734\n1469#3,12:1766\n1484#3,18:1778\n1506#3:1796\n1507#3:1798\n1512#3,34:1799\n1#4:676\n1#4:959\n1#4:991\n1#4:1082\n1#4:1143\n1#4:1483\n1#4:1499\n1#4:1541\n1#4:1549\n1#4:1597\n1#4:1649\n1#4:1797\n*S KotlinDebug\n*F\n+ 1 Buffer.kt\nokio/Buffer\n*L\n167#1:642\n197#1:675\n235#1:677\n261#1:737\n264#1:763\n267#1:802\n267#1:813\n335#1:1003\n338#1:1018\n374#1:1122\n483#1:1615\n181#1:643,32\n252#1:678,10\n255#1:688,18\n258#1:706,2\n258#1:708\n258#1:709\n258#1:710,18\n261#1:728,9\n261#1:738,15\n264#1:753,10\n264#1:764,3\n264#1:767,25\n267#1:792,10\n267#1:803\n267#1:804,9\n267#1:814,7\n267#1:821,20\n279#1:841,60\n282#1:901,56\n284#1:957\n287#1:958\n287#1:960,6\n289#1:966,7\n292#1:973,6\n295#1:979,5\n329#1:984,6\n335#1:990\n335#1:992,11\n335#1:1004,5\n338#1:1009,9\n338#1:1019,61\n340#1:1080\n343#1:1081\n343#1:1083,5\n345#1:1088\n348#1:1089,7\n351#1:1096,20\n371#1:1116\n374#1:1117,5\n374#1:1123,10\n376#1:1133,7\n379#1:1140,2\n384#1:1142\n384#1:1144,87\n387#1:1231,48\n410#1:1279\n416#1:1280,21\n437#1:1301,7\n441#1:1308,7\n443#1:1315,4\n445#1:1319,8\n449#1:1327,10\n453#1:1337,14\n457#1:1351,91\n460#1:1442,40\n463#1:1482\n463#1:1484,13\n465#1:1497\n465#1:1498\n465#1:1500,39\n467#1:1539,2\n467#1:1542,4\n477#1:1546,3\n477#1:1550,4\n477#1:1554\n477#1:1555,22\n477#1:1577,18\n483#1:1595,2\n483#1:1598,3\n483#1:1601\n483#1:1602,13\n483#1:1616,13\n483#1:1629,18\n488#1:1647,2\n488#1:1650\n488#1:1651\n488#1:1652,50\n488#1:1702,18\n498#1:1720,14\n568#1:1734,32\n570#1:1766,12\n578#1:1778,18\n586#1:1796\n586#1:1798\n588#1:1799,34\n287#1:959\n335#1:991\n343#1:1082\n384#1:1143\n463#1:1483\n465#1:1499\n467#1:1541\n477#1:1549\n483#1:1597\n488#1:1649\n586#1:1797\n*E\n"})
/* loaded from: classes5.dex */
public final class Buffer implements BufferedSource, BufferedSink, Cloneable, ByteChannel {

    @JvmField
    @Nullable
    public Segment head;
    private long size;

    @Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0012\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\r\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006J\u0015\u0010\t\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nJ\u0015\u0010\f\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u0007¢\u0006\u0004\b\f\u0010\rJ\u0015\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u0004¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0012\u0010\u0003R\u0018\u0010\u0014\u001a\u0004\u0018\u00010\u00138\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0016\u0010\u0017\u001a\u00020\u00168\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R$\u0010\u001a\u001a\u0004\u0018\u00010\u00198\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\u0016\u0010\b\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\b\u0010 R\u0018\u0010\"\u001a\u0004\u0018\u00010!8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\"\u0010#R\u0016\u0010$\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b$\u0010%R\u0016\u0010&\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b&\u0010%¨\u0006'"}, d2 = {"Lokio/Buffer$UnsafeCursor;", "Ljava/io/Closeable;", "<init>", "()V", "", "next", "()I", "", "offset", "seek", "(J)I", "newSize", "resizeBuffer", "(J)J", "minByteCount", "expandBuffer", "(I)J", "Lkotlin/j;", "close", "Lokio/Buffer;", "buffer", "Lokio/Buffer;", "", "readWrite", "Z", "Lokio/Segment;", "segment", "Lokio/Segment;", "getSegment$okio", "()Lokio/Segment;", "setSegment$okio", "(Lokio/Segment;)V", "J", "", "data", "[B", "start", "I", "end", "okio"}, k = 1, mv = {1, 9, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nBuffer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Buffer.kt\nokio/Buffer$UnsafeCursor\n+ 2 Buffer.kt\nokio/internal/-Buffer\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Util.kt\nokio/-SegmentedByteString\n*L\n1#1,641:1\n1567#2:642\n1568#2:644\n1572#2:645\n1573#2,68:647\n1644#2:715\n1645#2,32:717\n1677#2,18:750\n1698#2:768\n1699#2,18:770\n1721#2:788\n1723#2,7:790\n1#3:643\n1#3:646\n1#3:716\n1#3:769\n1#3:789\n86#4:749\n*S KotlinDebug\n*F\n+ 1 Buffer.kt\nokio/Buffer$UnsafeCursor\n*L\n628#1:642\n628#1:644\n630#1:645\n630#1:647,68\n632#1:715\n632#1:717,32\n632#1:750,18\n634#1:768\n634#1:770,18\n637#1:788\n637#1:790,7\n628#1:643\n630#1:646\n632#1:716\n634#1:769\n637#1:789\n632#1:749\n*E\n"})
    public static final class UnsafeCursor implements Closeable {

        @JvmField
        @Nullable
        public Buffer buffer;

        @JvmField
        @Nullable
        public byte[] data;

        @JvmField
        public boolean readWrite;

        @Nullable
        private Segment segment;

        @JvmField
        public long offset = -1;

        @JvmField
        public int start = -1;

        @JvmField
        public int end = -1;

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (this.buffer == null) {
                throw new IllegalStateException("not attached to a buffer");
            }
            this.buffer = null;
            setSegment$okio(null);
            this.offset = -1L;
            this.data = null;
            this.start = -1;
            this.end = -1;
        }

        public final long expandBuffer(int minByteCount) {
            if (minByteCount <= 0) {
                throw new IllegalArgumentException(("minByteCount <= 0: " + minByteCount).toString());
            }
            if (minByteCount > 8192) {
                throw new IllegalArgumentException(("minByteCount > Segment.SIZE: " + minByteCount).toString());
            }
            Buffer buffer = this.buffer;
            if (buffer == null) {
                throw new IllegalStateException("not attached to a buffer");
            }
            if (!this.readWrite) {
                throw new IllegalStateException("expandBuffer() only permitted for read/write buffers");
            }
            long size = buffer.size();
            Segment segmentWritableSegment$okio = buffer.writableSegment$okio(minByteCount);
            int i2 = 8192 - segmentWritableSegment$okio.limit;
            segmentWritableSegment$okio.limit = 8192;
            long j2 = i2;
            buffer.setSize$okio(size + j2);
            setSegment$okio(segmentWritableSegment$okio);
            this.offset = size;
            this.data = segmentWritableSegment$okio.data;
            this.start = 8192 - i2;
            this.end = 8192;
            return j2;
        }

        @Nullable
        /* renamed from: getSegment$okio, reason: from getter */
        public final Segment getSegment() {
            return this.segment;
        }

        public final int next() {
            long j2 = this.offset;
            Buffer buffer = this.buffer;
            kotlin.jvm.internal.j.b(buffer);
            if (j2 == buffer.size()) {
                throw new IllegalStateException("no more bytes");
            }
            long j3 = this.offset;
            return seek(j3 == -1 ? 0L : j3 + (this.end - this.start));
        }

        public final long resizeBuffer(long newSize) {
            Buffer buffer = this.buffer;
            if (buffer == null) {
                throw new IllegalStateException("not attached to a buffer");
            }
            if (!this.readWrite) {
                throw new IllegalStateException("resizeBuffer() only permitted for read/write buffers");
            }
            long size = buffer.size();
            if (newSize <= size) {
                if (newSize < 0) {
                    throw new IllegalArgumentException(("newSize < 0: " + newSize).toString());
                }
                long j2 = size - newSize;
                while (true) {
                    if (j2 <= 0) {
                        break;
                    }
                    Segment segment = buffer.head;
                    kotlin.jvm.internal.j.b(segment);
                    Segment segment2 = segment.prev;
                    kotlin.jvm.internal.j.b(segment2);
                    int i2 = segment2.limit;
                    long j3 = i2 - segment2.pos;
                    if (j3 > j2) {
                        segment2.limit = i2 - ((int) j2);
                        break;
                    }
                    buffer.head = segment2.pop();
                    SegmentPool.recycle(segment2);
                    j2 -= j3;
                }
                setSegment$okio(null);
                this.offset = newSize;
                this.data = null;
                this.start = -1;
                this.end = -1;
            } else if (newSize > size) {
                long j4 = newSize - size;
                boolean z2 = true;
                while (j4 > 0) {
                    Segment segmentWritableSegment$okio = buffer.writableSegment$okio(1);
                    int iMin = (int) Math.min(j4, 8192 - segmentWritableSegment$okio.limit);
                    segmentWritableSegment$okio.limit += iMin;
                    j4 -= iMin;
                    if (z2) {
                        setSegment$okio(segmentWritableSegment$okio);
                        this.offset = size;
                        this.data = segmentWritableSegment$okio.data;
                        int i3 = segmentWritableSegment$okio.limit;
                        this.start = i3 - iMin;
                        this.end = i3;
                        z2 = false;
                    }
                }
            }
            buffer.setSize$okio(newSize);
            return size;
        }

        public final int seek(long offset) {
            Segment segmentPush;
            Buffer buffer = this.buffer;
            if (buffer == null) {
                throw new IllegalStateException("not attached to a buffer");
            }
            if (offset < -1 || offset > buffer.size()) {
                throw new ArrayIndexOutOfBoundsException("offset=" + offset + " > size=" + buffer.size());
            }
            if (offset == -1 || offset == buffer.size()) {
                setSegment$okio(null);
                this.offset = offset;
                this.data = null;
                this.start = -1;
                this.end = -1;
                return -1;
            }
            long size = buffer.size();
            Segment segment = buffer.head;
            long j2 = 0;
            if (getSegment() != null) {
                long j3 = this.offset;
                int i2 = this.start;
                kotlin.jvm.internal.j.b(getSegment());
                long j4 = j3 - (i2 - r9.pos);
                if (j4 > offset) {
                    segmentPush = segment;
                    segment = getSegment();
                    size = j4;
                } else {
                    segmentPush = getSegment();
                    j2 = j4;
                }
            } else {
                segmentPush = segment;
            }
            if (size - offset > offset - j2) {
                while (true) {
                    kotlin.jvm.internal.j.b(segmentPush);
                    int i3 = segmentPush.limit;
                    int i4 = segmentPush.pos;
                    if (offset < (i3 - i4) + j2) {
                        break;
                    }
                    j2 += i3 - i4;
                    segmentPush = segmentPush.next;
                }
            } else {
                while (size > offset) {
                    kotlin.jvm.internal.j.b(segment);
                    segment = segment.prev;
                    kotlin.jvm.internal.j.b(segment);
                    size -= segment.limit - segment.pos;
                }
                j2 = size;
                segmentPush = segment;
            }
            if (this.readWrite) {
                kotlin.jvm.internal.j.b(segmentPush);
                if (segmentPush.shared) {
                    Segment segmentUnsharedCopy = segmentPush.unsharedCopy();
                    if (buffer.head == segmentPush) {
                        buffer.head = segmentUnsharedCopy;
                    }
                    segmentPush = segmentPush.push(segmentUnsharedCopy);
                    Segment segment2 = segmentPush.prev;
                    kotlin.jvm.internal.j.b(segment2);
                    segment2.pop();
                }
            }
            setSegment$okio(segmentPush);
            this.offset = offset;
            kotlin.jvm.internal.j.b(segmentPush);
            this.data = segmentPush.data;
            int i5 = segmentPush.pos + ((int) (offset - j2));
            this.start = i5;
            int i6 = segmentPush.limit;
            this.end = i6;
            return i6 - i5;
        }

        public final void setSegment$okio(@Nullable Segment segment) {
            this.segment = segment;
        }
    }

    public static /* synthetic */ Buffer copyTo$default(Buffer buffer, OutputStream outputStream, long j2, long j3, int i2, Object obj) throws IOException {
        if ((i2 & 2) != 0) {
            j2 = 0;
        }
        long j4 = j2;
        if ((i2 & 4) != 0) {
            j3 = buffer.size - j4;
        }
        return buffer.copyTo(outputStream, j4, j3);
    }

    private final ByteString digest(String algorithm) throws NoSuchAlgorithmException {
        MessageDigest messageDigest = MessageDigest.getInstance(algorithm);
        Segment segment = this.head;
        if (segment != null) {
            byte[] bArr = segment.data;
            int i2 = segment.pos;
            messageDigest.update(bArr, i2, segment.limit - i2);
            Segment segment2 = segment.next;
            kotlin.jvm.internal.j.b(segment2);
            while (segment2 != segment) {
                byte[] bArr2 = segment2.data;
                int i3 = segment2.pos;
                messageDigest.update(bArr2, i3, segment2.limit - i3);
                segment2 = segment2.next;
                kotlin.jvm.internal.j.b(segment2);
            }
        }
        byte[] bArrDigest = messageDigest.digest();
        kotlin.jvm.internal.j.d(bArrDigest, "digest(...)");
        return new ByteString(bArrDigest);
    }

    private final ByteString hmac(String algorithm, ByteString key) throws IllegalStateException, NoSuchAlgorithmException, InvalidKeyException {
        try {
            Mac mac = Mac.getInstance(algorithm);
            mac.init(new SecretKeySpec(key.internalArray$okio(), algorithm));
            Segment segment = this.head;
            if (segment != null) {
                byte[] bArr = segment.data;
                int i2 = segment.pos;
                mac.update(bArr, i2, segment.limit - i2);
                Segment segment2 = segment.next;
                kotlin.jvm.internal.j.b(segment2);
                while (segment2 != segment) {
                    byte[] bArr2 = segment2.data;
                    int i3 = segment2.pos;
                    mac.update(bArr2, i3, segment2.limit - i3);
                    segment2 = segment2.next;
                    kotlin.jvm.internal.j.b(segment2);
                }
            }
            byte[] bArrDoFinal = mac.doFinal();
            kotlin.jvm.internal.j.d(bArrDoFinal, "doFinal(...)");
            return new ByteString(bArrDoFinal);
        } catch (InvalidKeyException e2) {
            throw new IllegalArgumentException(e2);
        }
    }

    public static /* synthetic */ UnsafeCursor readAndWriteUnsafe$default(Buffer buffer, UnsafeCursor unsafeCursor, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            unsafeCursor = SegmentedByteString.getDEFAULT__new_UnsafeCursor();
        }
        return buffer.readAndWriteUnsafe(unsafeCursor);
    }

    public static /* synthetic */ UnsafeCursor readUnsafe$default(Buffer buffer, UnsafeCursor unsafeCursor, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            unsafeCursor = SegmentedByteString.getDEFAULT__new_UnsafeCursor();
        }
        return buffer.readUnsafe(unsafeCursor);
    }

    public static /* synthetic */ Buffer writeTo$default(Buffer buffer, OutputStream outputStream, long j2, int i2, Object obj) throws IOException {
        if ((i2 & 2) != 0) {
            j2 = buffer.size;
        }
        return buffer.writeTo(outputStream, j2);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "moved to operator function", replaceWith = @ReplaceWith(expression = "this[index]", imports = {}))
    @JvmName(name = "-deprecated_getByte")
    /* renamed from: -deprecated_getByte, reason: not valid java name */
    public final byte m221deprecated_getByte(long index) {
        return getByte(index);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "moved to val", replaceWith = @ReplaceWith(expression = "size", imports = {}))
    @JvmName(name = "-deprecated_size")
    /* renamed from: -deprecated_size, reason: not valid java name and from getter */
    public final long getSize() {
        return this.size;
    }

    @Override // okio.BufferedSource, okio.BufferedSink
    @NotNull
    /* renamed from: buffer */
    public Buffer getBufferField() {
        return this;
    }

    public final void clear() throws EOFException {
        skip(size());
    }

    @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    public final long completeSegmentByteCount() {
        long size = size();
        if (size == 0) {
            return 0L;
        }
        Segment segment = this.head;
        kotlin.jvm.internal.j.b(segment);
        Segment segment2 = segment.prev;
        kotlin.jvm.internal.j.b(segment2);
        return (segment2.limit >= 8192 || !segment2.owner) ? size : size - (r3 - segment2.pos);
    }

    @NotNull
    public final Buffer copy() {
        Buffer buffer = new Buffer();
        if (size() == 0) {
            return buffer;
        }
        Segment segment = this.head;
        kotlin.jvm.internal.j.b(segment);
        Segment segmentSharedCopy = segment.sharedCopy();
        buffer.head = segmentSharedCopy;
        segmentSharedCopy.prev = segmentSharedCopy;
        segmentSharedCopy.next = segmentSharedCopy;
        for (Segment segment2 = segment.next; segment2 != segment; segment2 = segment2.next) {
            Segment segment3 = segmentSharedCopy.prev;
            kotlin.jvm.internal.j.b(segment3);
            kotlin.jvm.internal.j.b(segment2);
            segment3.push(segment2.sharedCopy());
        }
        buffer.setSize$okio(size());
        return buffer;
    }

    @JvmOverloads
    @NotNull
    public final Buffer copyTo(@NotNull OutputStream out) throws IOException {
        kotlin.jvm.internal.j.e(out, "out");
        return copyTo$default(this, out, 0L, 0L, 6, (Object) null);
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer emit() {
        return this;
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer emitCompleteSegments() {
        return this;
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Buffer)) {
            return false;
        }
        Buffer buffer = (Buffer) other;
        if (size() != buffer.size()) {
            return false;
        }
        if (size() == 0) {
            return true;
        }
        Segment segment = this.head;
        kotlin.jvm.internal.j.b(segment);
        Segment segment2 = buffer.head;
        kotlin.jvm.internal.j.b(segment2);
        int i2 = segment.pos;
        int i3 = segment2.pos;
        long j2 = 0;
        while (j2 < size()) {
            long jMin = Math.min(segment.limit - i2, segment2.limit - i3);
            long j3 = 0;
            while (j3 < jMin) {
                int i4 = i2 + 1;
                int i5 = i3 + 1;
                if (segment.data[i2] != segment2.data[i3]) {
                    return false;
                }
                j3++;
                i2 = i4;
                i3 = i5;
            }
            if (i2 == segment.limit) {
                segment = segment.next;
                kotlin.jvm.internal.j.b(segment);
                i2 = segment.pos;
            }
            if (i3 == segment2.limit) {
                segment2 = segment2.next;
                kotlin.jvm.internal.j.b(segment2);
                i3 = segment2.pos;
            }
            j2 += jMin;
        }
        return true;
    }

    @Override // okio.BufferedSource
    public boolean exhausted() {
        return this.size == 0;
    }

    @Override // okio.BufferedSink, okio.Sink, java.io.Flushable
    public void flush() {
    }

    @Override // okio.BufferedSource, okio.BufferedSink
    @NotNull
    public Buffer getBuffer() {
        return this;
    }

    @JvmName(name = "getByte")
    public final byte getByte(long pos) {
        SegmentedByteString.checkOffsetAndCount(size(), pos, 1L);
        Segment segment = this.head;
        if (segment == null) {
            kotlin.jvm.internal.j.b(null);
            throw null;
        }
        if (size() - pos < pos) {
            long size = size();
            while (size > pos) {
                segment = segment.prev;
                kotlin.jvm.internal.j.b(segment);
                size -= segment.limit - segment.pos;
            }
            kotlin.jvm.internal.j.b(segment);
            return segment.data[(int) ((segment.pos + pos) - size)];
        }
        long j2 = 0;
        while (true) {
            long j3 = (segment.limit - segment.pos) + j2;
            if (j3 > pos) {
                kotlin.jvm.internal.j.b(segment);
                return segment.data[(int) ((segment.pos + pos) - j2)];
            }
            segment = segment.next;
            kotlin.jvm.internal.j.b(segment);
            j2 = j3;
        }
    }

    public int hashCode() {
        Segment segment = this.head;
        if (segment == null) {
            return 0;
        }
        int i2 = 1;
        do {
            int i3 = segment.limit;
            for (int i4 = segment.pos; i4 < i3; i4++) {
                i2 = (i2 * 31) + segment.data[i4];
            }
            segment = segment.next;
            kotlin.jvm.internal.j.b(segment);
        } while (segment != this.head);
        return i2;
    }

    @NotNull
    public final ByteString hmacSha1(@NotNull ByteString key) {
        kotlin.jvm.internal.j.e(key, "key");
        return hmac("HmacSHA1", key);
    }

    @NotNull
    public final ByteString hmacSha256(@NotNull ByteString key) {
        kotlin.jvm.internal.j.e(key, "key");
        return hmac("HmacSHA256", key);
    }

    @NotNull
    public final ByteString hmacSha512(@NotNull ByteString key) {
        kotlin.jvm.internal.j.e(key, "key");
        return hmac("HmacSHA512", key);
    }

    @Override // okio.BufferedSource
    public long indexOf(byte b3) {
        return indexOf(b3, 0L, LocationRequestCompat.PASSIVE_INTERVAL);
    }

    @Override // okio.BufferedSource
    public long indexOfElement(@NotNull ByteString targetBytes) {
        kotlin.jvm.internal.j.e(targetBytes, "targetBytes");
        return indexOfElement(targetBytes, 0L);
    }

    @Override // okio.BufferedSource
    @NotNull
    public InputStream inputStream() {
        return new InputStream() { // from class: okio.Buffer.inputStream.1
            @Override // java.io.InputStream
            public int available() {
                return (int) Math.min(Buffer.this.size(), Integer.MAX_VALUE);
            }

            @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
            }

            @Override // java.io.InputStream
            public int read() {
                if (Buffer.this.size() > 0) {
                    return Buffer.this.readByte() & 255;
                }
                return -1;
            }

            @NotNull
            public String toString() {
                return Buffer.this + ".inputStream()";
            }

            @Override // java.io.InputStream
            public int read(@NotNull byte[] sink, int offset, int byteCount) {
                kotlin.jvm.internal.j.e(sink, "sink");
                return Buffer.this.read(sink, offset, byteCount);
            }
        };
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return true;
    }

    @NotNull
    public final ByteString md5() {
        return digest("MD5");
    }

    @Override // okio.BufferedSink
    @NotNull
    public OutputStream outputStream() {
        return new OutputStream() { // from class: okio.Buffer.outputStream.1
            @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
            }

            @Override // java.io.OutputStream, java.io.Flushable
            public void flush() {
            }

            @NotNull
            public String toString() {
                return Buffer.this + ".outputStream()";
            }

            @Override // java.io.OutputStream
            public void write(int b3) {
                Buffer.this.writeByte(b3);
            }

            @Override // java.io.OutputStream
            public void write(@NotNull byte[] data, int offset, int byteCount) {
                kotlin.jvm.internal.j.e(data, "data");
                Buffer.this.write(data, offset, byteCount);
            }
        };
    }

    @Override // okio.BufferedSource
    @NotNull
    public BufferedSource peek() {
        return Okio.buffer(new PeekSource(this));
    }

    @Override // okio.BufferedSource
    public boolean rangeEquals(long offset, @NotNull ByteString bytes) {
        kotlin.jvm.internal.j.e(bytes, "bytes");
        return rangeEquals(offset, bytes, 0, bytes.size());
    }

    @Override // java.nio.channels.ReadableByteChannel
    public int read(@NotNull ByteBuffer sink) throws IOException {
        kotlin.jvm.internal.j.e(sink, "sink");
        Segment segment = this.head;
        if (segment == null) {
            return -1;
        }
        int iMin = Math.min(sink.remaining(), segment.limit - segment.pos);
        sink.put(segment.data, segment.pos, iMin);
        int i2 = segment.pos + iMin;
        segment.pos = i2;
        this.size -= iMin;
        if (i2 == segment.limit) {
            this.head = segment.pop();
            SegmentPool.recycle(segment);
        }
        return iMin;
    }

    @Override // okio.BufferedSource
    public long readAll(@NotNull Sink sink) throws IOException {
        kotlin.jvm.internal.j.e(sink, "sink");
        long size = size();
        if (size > 0) {
            sink.write(this, size);
        }
        return size;
    }

    @JvmOverloads
    @NotNull
    public final UnsafeCursor readAndWriteUnsafe() {
        return readAndWriteUnsafe$default(this, null, 1, null);
    }

    @Override // okio.BufferedSource
    public byte readByte() throws EOFException {
        if (size() == 0) {
            throw new EOFException();
        }
        Segment segment = this.head;
        kotlin.jvm.internal.j.b(segment);
        int i2 = segment.pos;
        int i3 = segment.limit;
        int i4 = i2 + 1;
        byte b3 = segment.data[i2];
        setSize$okio(size() - 1);
        if (i4 != i3) {
            segment.pos = i4;
            return b3;
        }
        this.head = segment.pop();
        SegmentPool.recycle(segment);
        return b3;
    }

    @Override // okio.BufferedSource
    @NotNull
    public byte[] readByteArray() {
        return readByteArray(size());
    }

    @Override // okio.BufferedSource
    @NotNull
    public ByteString readByteString() {
        return readByteString(size());
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0045, code lost:
    
        r1 = new okio.Buffer().writeDecimalLong(r8).writeByte((int) r15);
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0052, code lost:
    
        if (r2 != false) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0054, code lost:
    
        r1.readByte();
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0071, code lost:
    
        throw new java.lang.NumberFormatException("Number too large: " + r1.readUtf8());
     */
    @Override // okio.BufferedSource
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long readDecimalLong() throws java.io.EOFException {
        /*
            Method dump skipped, instructions count: 246
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.Buffer.readDecimalLong():long");
    }

    @NotNull
    public final Buffer readFrom(@NotNull InputStream input) throws IOException {
        kotlin.jvm.internal.j.e(input, "input");
        readFrom(input, LocationRequestCompat.PASSIVE_INTERVAL, true);
        return this;
    }

    @Override // okio.BufferedSource
    public void readFully(@NotNull Buffer sink, long byteCount) throws EOFException {
        kotlin.jvm.internal.j.e(sink, "sink");
        if (size() >= byteCount) {
            sink.write(this, byteCount);
        } else {
            sink.write(this, size());
            throw new EOFException();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00a7 A[EDGE_INSN: B:43:0x00a7->B:37:0x00a7 BREAK  A[LOOP:0: B:5:0x000d->B:45:?], SYNTHETIC] */
    @Override // okio.BufferedSource
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long readHexadecimalUnsignedLong() throws java.io.EOFException {
        /*
            r14 = this;
            long r0 = r14.size()
            r2 = 0
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 == 0) goto Lb1
            r0 = 0
            r1 = r0
            r4 = r2
        Ld:
            okio.Segment r6 = r14.head
            kotlin.jvm.internal.j.b(r6)
            byte[] r7 = r6.data
            int r8 = r6.pos
            int r9 = r6.limit
        L18:
            if (r8 >= r9) goto L93
            r10 = r7[r8]
            r11 = 48
            if (r10 < r11) goto L27
            r11 = 57
            if (r10 > r11) goto L27
            int r11 = r10 + (-48)
            goto L3c
        L27:
            r11 = 97
            if (r10 < r11) goto L32
            r11 = 102(0x66, float:1.43E-43)
            if (r10 > r11) goto L32
            int r11 = r10 + (-87)
            goto L3c
        L32:
            r11 = 65
            if (r10 < r11) goto L74
            r11 = 70
            if (r10 > r11) goto L74
            int r11 = r10 + (-55)
        L3c:
            r12 = -1152921504606846976(0xf000000000000000, double:-3.105036184601418E231)
            long r12 = r12 & r4
            int r12 = (r12 > r2 ? 1 : (r12 == r2 ? 0 : -1))
            if (r12 != 0) goto L4c
            r10 = 4
            long r4 = r4 << r10
            long r10 = (long) r11
            long r4 = r4 | r10
            int r8 = r8 + 1
            int r0 = r0 + 1
            goto L18
        L4c:
            okio.Buffer r0 = new okio.Buffer
            r0.<init>()
            okio.Buffer r0 = r0.writeHexadecimalUnsignedLong(r4)
            okio.Buffer r0 = r0.writeByte(r10)
            java.lang.NumberFormatException r1 = new java.lang.NumberFormatException
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "Number too large: "
            r2.append(r3)
            java.lang.String r0 = r0.readUtf8()
            r2.append(r0)
            java.lang.String r0 = r2.toString()
            r1.<init>(r0)
            throw r1
        L74:
            if (r0 == 0) goto L78
            r1 = 1
            goto L93
        L78:
            java.lang.NumberFormatException r0 = new java.lang.NumberFormatException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Expected leading [0-9a-fA-F] character but was 0x"
            r1.append(r2)
            java.lang.String r2 = okio.SegmentedByteString.toHexString(r10)
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L93:
            if (r8 != r9) goto L9f
            okio.Segment r7 = r6.pop()
            r14.head = r7
            okio.SegmentPool.recycle(r6)
            goto La1
        L9f:
            r6.pos = r8
        La1:
            if (r1 != 0) goto La7
            okio.Segment r6 = r14.head
            if (r6 != 0) goto Ld
        La7:
            long r1 = r14.size()
            long r6 = (long) r0
            long r1 = r1 - r6
            r14.setSize$okio(r1)
            return r4
        Lb1:
            java.io.EOFException r0 = new java.io.EOFException
            r0.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.Buffer.readHexadecimalUnsignedLong():long");
    }

    @Override // okio.BufferedSource
    public int readInt() throws EOFException {
        if (size() < 4) {
            throw new EOFException();
        }
        Segment segment = this.head;
        kotlin.jvm.internal.j.b(segment);
        int i2 = segment.pos;
        int i3 = segment.limit;
        if (i3 - i2 < 4) {
            return ((readByte() & 255) << 24) | ((readByte() & 255) << 16) | ((readByte() & 255) << 8) | (readByte() & 255);
        }
        byte[] bArr = segment.data;
        int i4 = i2 + 3;
        int i5 = ((bArr[i2 + 1] & 255) << 16) | ((bArr[i2] & 255) << 24) | ((bArr[i2 + 2] & 255) << 8);
        int i6 = i2 + 4;
        int i7 = (bArr[i4] & 255) | i5;
        setSize$okio(size() - 4);
        if (i6 != i3) {
            segment.pos = i6;
            return i7;
        }
        this.head = segment.pop();
        SegmentPool.recycle(segment);
        return i7;
    }

    @Override // okio.BufferedSource
    public int readIntLe() throws EOFException {
        return SegmentedByteString.reverseBytes(readInt());
    }

    @Override // okio.BufferedSource
    public long readLong() throws EOFException {
        if (size() < 8) {
            throw new EOFException();
        }
        Segment segment = this.head;
        kotlin.jvm.internal.j.b(segment);
        int i2 = segment.pos;
        int i3 = segment.limit;
        if (i3 - i2 < 8) {
            return ((readInt() & KeyboardMap.kValueMask) << 32) | (KeyboardMap.kValueMask & readInt());
        }
        byte[] bArr = segment.data;
        int i4 = i2 + 7;
        long j2 = ((bArr[i2] & 255) << 56) | ((bArr[i2 + 1] & 255) << 48) | ((bArr[i2 + 2] & 255) << 40) | ((bArr[i2 + 3] & 255) << 32) | ((bArr[i2 + 4] & 255) << 24) | ((bArr[i2 + 5] & 255) << 16) | ((bArr[i2 + 6] & 255) << 8);
        int i5 = i2 + 8;
        long j3 = j2 | (bArr[i4] & 255);
        setSize$okio(size() - 8);
        if (i5 != i3) {
            segment.pos = i5;
            return j3;
        }
        this.head = segment.pop();
        SegmentPool.recycle(segment);
        return j3;
    }

    @Override // okio.BufferedSource
    public long readLongLe() throws EOFException {
        return SegmentedByteString.reverseBytes(readLong());
    }

    @Override // okio.BufferedSource
    public short readShort() throws EOFException {
        if (size() < 2) {
            throw new EOFException();
        }
        Segment segment = this.head;
        kotlin.jvm.internal.j.b(segment);
        int i2 = segment.pos;
        int i3 = segment.limit;
        if (i3 - i2 < 2) {
            return (short) (((readByte() & 255) << 8) | (readByte() & 255));
        }
        byte[] bArr = segment.data;
        int i4 = i2 + 1;
        int i5 = (bArr[i2] & 255) << 8;
        int i6 = i2 + 2;
        int i7 = (bArr[i4] & 255) | i5;
        setSize$okio(size() - 2);
        if (i6 == i3) {
            this.head = segment.pop();
            SegmentPool.recycle(segment);
        } else {
            segment.pos = i6;
        }
        return (short) i7;
    }

    @Override // okio.BufferedSource
    public short readShortLe() throws EOFException {
        return SegmentedByteString.reverseBytes(readShort());
    }

    @Override // okio.BufferedSource
    @NotNull
    public String readString(@NotNull Charset charset) {
        kotlin.jvm.internal.j.e(charset, "charset");
        return readString(this.size, charset);
    }

    @JvmOverloads
    @NotNull
    public final UnsafeCursor readUnsafe() {
        return readUnsafe$default(this, null, 1, null);
    }

    @Override // okio.BufferedSource
    @NotNull
    public String readUtf8() {
        return readString(this.size, C1624d.f51451b);
    }

    @Override // okio.BufferedSource
    public int readUtf8CodePoint() throws EOFException {
        int i2;
        int i3;
        int i4;
        if (size() == 0) {
            throw new EOFException();
        }
        byte b3 = getByte(0L);
        if ((b3 & com.anythink.core.common.s.a.c.f7560a) == 0) {
            i2 = b3 & 127;
            i4 = 0;
            i3 = 1;
        } else if ((b3 & 224) == 192) {
            i2 = b3 & 31;
            i3 = 2;
            i4 = 128;
        } else if ((b3 & 240) == 224) {
            i2 = b3 & ek.f49295m;
            i3 = 3;
            i4 = 2048;
        } else {
            if ((b3 & 248) != 240) {
                skip(1L);
                return Utf8.REPLACEMENT_CODE_POINT;
            }
            i2 = b3 & 7;
            i3 = 4;
            i4 = 65536;
        }
        long j2 = i3;
        if (size() < j2) {
            throw new EOFException("size < " + i3 + ": " + size() + " (to read code point prefixed 0x" + SegmentedByteString.toHexString(b3) + ')');
        }
        for (int i5 = 1; i5 < i3; i5++) {
            long j3 = i5;
            byte b4 = getByte(j3);
            if ((b4 & 192) != 128) {
                skip(j3);
                return Utf8.REPLACEMENT_CODE_POINT;
            }
            i2 = (i2 << 6) | (b4 & 63);
        }
        skip(j2);
        return i2 > 1114111 ? Utf8.REPLACEMENT_CODE_POINT : ((55296 > i2 || i2 >= 57344) && i2 >= i4) ? i2 : Utf8.REPLACEMENT_CODE_POINT;
    }

    @Override // okio.BufferedSource
    @Nullable
    public String readUtf8Line() throws EOFException {
        long jIndexOf = indexOf((byte) 10);
        if (jIndexOf != -1) {
            return okio.internal.Buffer.readUtf8Line(this, jIndexOf);
        }
        if (size() != 0) {
            return readUtf8(size());
        }
        return null;
    }

    @Override // okio.BufferedSource
    @NotNull
    public String readUtf8LineStrict() throws EOFException {
        return readUtf8LineStrict(LocationRequestCompat.PASSIVE_INTERVAL);
    }

    @Override // okio.BufferedSource
    public boolean request(long byteCount) {
        return this.size >= byteCount;
    }

    @Override // okio.BufferedSource
    public void require(long byteCount) throws EOFException {
        if (this.size < byteCount) {
            throw new EOFException();
        }
    }

    @Override // okio.BufferedSource
    public int select(@NotNull Options options) throws EOFException {
        kotlin.jvm.internal.j.e(options, "options");
        int iSelectPrefix$default = okio.internal.Buffer.selectPrefix$default(this, options, false, 2, null);
        if (iSelectPrefix$default == -1) {
            return -1;
        }
        skip(options.getByteStrings()[iSelectPrefix$default].size());
        return iSelectPrefix$default;
    }

    public final void setSize$okio(long j2) {
        this.size = j2;
    }

    @NotNull
    public final ByteString sha1() {
        return digest("SHA-1");
    }

    @NotNull
    public final ByteString sha256() {
        return digest("SHA-256");
    }

    @NotNull
    public final ByteString sha512() {
        return digest("SHA-512");
    }

    @JvmName(name = "size")
    public final long size() {
        return this.size;
    }

    @Override // okio.BufferedSource
    public void skip(long byteCount) throws EOFException {
        while (byteCount > 0) {
            Segment segment = this.head;
            if (segment == null) {
                throw new EOFException();
            }
            int iMin = (int) Math.min(byteCount, segment.limit - segment.pos);
            long j2 = iMin;
            setSize$okio(size() - j2);
            byteCount -= j2;
            int i2 = segment.pos + iMin;
            segment.pos = i2;
            if (i2 == segment.limit) {
                this.head = segment.pop();
                SegmentPool.recycle(segment);
            }
        }
    }

    @NotNull
    public final ByteString snapshot() {
        if (size() <= 2147483647L) {
            return snapshot((int) size());
        }
        throw new IllegalStateException(("size > Int.MAX_VALUE: " + size()).toString());
    }

    @Override // okio.Source
    @NotNull
    public Timeout timeout() {
        return Timeout.NONE;
    }

    @NotNull
    public String toString() {
        return snapshot().toString();
    }

    @NotNull
    public final Segment writableSegment$okio(int minimumCapacity) {
        if (minimumCapacity < 1 || minimumCapacity > 8192) {
            throw new IllegalArgumentException("unexpected capacity");
        }
        Segment segment = this.head;
        if (segment != null) {
            kotlin.jvm.internal.j.b(segment);
            Segment segment2 = segment.prev;
            kotlin.jvm.internal.j.b(segment2);
            return (segment2.limit + minimumCapacity > 8192 || !segment2.owner) ? segment2.push(SegmentPool.take()) : segment2;
        }
        Segment segmentTake = SegmentPool.take();
        this.head = segmentTake;
        segmentTake.prev = segmentTake;
        segmentTake.next = segmentTake;
        return segmentTake;
    }

    @Override // okio.BufferedSink
    public long writeAll(@NotNull Source source) throws IOException {
        kotlin.jvm.internal.j.e(source, "source");
        long j2 = 0;
        while (true) {
            long j3 = source.read(this, 8192L);
            if (j3 == -1) {
                return j2;
            }
            j2 += j3;
        }
    }

    @JvmOverloads
    @NotNull
    public final Buffer writeTo(@NotNull OutputStream out) throws IOException {
        kotlin.jvm.internal.j.e(out, "out");
        return writeTo$default(this, out, 0L, 2, null);
    }

    @NotNull
    public Buffer clone() {
        return copy();
    }

    @JvmOverloads
    @NotNull
    public final Buffer copyTo(@NotNull OutputStream out, long j2) throws IOException {
        kotlin.jvm.internal.j.e(out, "out");
        return copyTo$default(this, out, j2, 0L, 4, (Object) null);
    }

    @Override // okio.BufferedSource
    public long indexOf(byte b3, long fromIndex) {
        return indexOf(b3, fromIndex, LocationRequestCompat.PASSIVE_INTERVAL);
    }

    @Override // okio.BufferedSource
    public long indexOfElement(@NotNull ByteString targetBytes, long fromIndex) {
        int i2;
        int i3;
        kotlin.jvm.internal.j.e(targetBytes, "targetBytes");
        long size = 0;
        if (fromIndex < 0) {
            throw new IllegalArgumentException(("fromIndex < 0: " + fromIndex).toString());
        }
        Segment segment = this.head;
        if (segment == null) {
            return -1L;
        }
        if (size() - fromIndex < fromIndex) {
            size = size();
            while (size > fromIndex) {
                segment = segment.prev;
                kotlin.jvm.internal.j.b(segment);
                size -= segment.limit - segment.pos;
            }
            if (targetBytes.size() == 2) {
                byte b3 = targetBytes.getByte(0);
                byte b4 = targetBytes.getByte(1);
                while (size < size()) {
                    byte[] bArr = segment.data;
                    i2 = (int) ((segment.pos + fromIndex) - size);
                    int i4 = segment.limit;
                    while (i2 < i4) {
                        byte b5 = bArr[i2];
                        if (b5 == b3 || b5 == b4) {
                            i3 = segment.pos;
                        } else {
                            i2++;
                        }
                    }
                    size += segment.limit - segment.pos;
                    segment = segment.next;
                    kotlin.jvm.internal.j.b(segment);
                    fromIndex = size;
                }
            } else {
                byte[] bArrInternalArray$okio = targetBytes.internalArray$okio();
                while (size < size()) {
                    byte[] bArr2 = segment.data;
                    i2 = (int) ((segment.pos + fromIndex) - size);
                    int i5 = segment.limit;
                    while (i2 < i5) {
                        byte b6 = bArr2[i2];
                        for (byte b7 : bArrInternalArray$okio) {
                            if (b6 == b7) {
                                i3 = segment.pos;
                            }
                        }
                        i2++;
                    }
                    size += segment.limit - segment.pos;
                    segment = segment.next;
                    kotlin.jvm.internal.j.b(segment);
                    fromIndex = size;
                }
            }
            return -1L;
        }
        while (true) {
            long j2 = (segment.limit - segment.pos) + size;
            if (j2 > fromIndex) {
                break;
            }
            segment = segment.next;
            kotlin.jvm.internal.j.b(segment);
            size = j2;
        }
        if (targetBytes.size() == 2) {
            byte b8 = targetBytes.getByte(0);
            byte b9 = targetBytes.getByte(1);
            while (size < size()) {
                byte[] bArr3 = segment.data;
                i2 = (int) ((segment.pos + fromIndex) - size);
                int i6 = segment.limit;
                while (i2 < i6) {
                    byte b10 = bArr3[i2];
                    if (b10 == b8 || b10 == b9) {
                        i3 = segment.pos;
                    } else {
                        i2++;
                    }
                }
                size += segment.limit - segment.pos;
                segment = segment.next;
                kotlin.jvm.internal.j.b(segment);
                fromIndex = size;
            }
        } else {
            byte[] bArrInternalArray$okio2 = targetBytes.internalArray$okio();
            while (size < size()) {
                byte[] bArr4 = segment.data;
                i2 = (int) ((segment.pos + fromIndex) - size);
                int i7 = segment.limit;
                while (i2 < i7) {
                    byte b11 = bArr4[i2];
                    for (byte b12 : bArrInternalArray$okio2) {
                        if (b11 == b12) {
                            i3 = segment.pos;
                        }
                    }
                    i2++;
                }
                size += segment.limit - segment.pos;
                segment = segment.next;
                kotlin.jvm.internal.j.b(segment);
                fromIndex = size;
            }
        }
        return -1L;
        return (i2 - i3) + size;
    }

    @Override // okio.BufferedSource
    public boolean rangeEquals(long offset, @NotNull ByteString bytes, int bytesOffset, int byteCount) {
        kotlin.jvm.internal.j.e(bytes, "bytes");
        if (offset < 0 || bytesOffset < 0 || byteCount < 0 || size() - offset < byteCount || bytes.size() - bytesOffset < byteCount) {
            return false;
        }
        for (int i2 = 0; i2 < byteCount; i2++) {
            if (getByte(i2 + offset) != bytes.getByte(bytesOffset + i2)) {
                return false;
            }
        }
        return true;
    }

    @JvmOverloads
    @NotNull
    public final UnsafeCursor readAndWriteUnsafe(@NotNull UnsafeCursor unsafeCursor) {
        kotlin.jvm.internal.j.e(unsafeCursor, "unsafeCursor");
        return okio.internal.Buffer.commonReadAndWriteUnsafe(this, unsafeCursor);
    }

    @Override // okio.BufferedSource
    @NotNull
    public byte[] readByteArray(long byteCount) throws EOFException {
        if (byteCount < 0 || byteCount > 2147483647L) {
            throw new IllegalArgumentException(("byteCount: " + byteCount).toString());
        }
        if (size() < byteCount) {
            throw new EOFException();
        }
        byte[] bArr = new byte[(int) byteCount];
        readFully(bArr);
        return bArr;
    }

    @Override // okio.BufferedSource
    @NotNull
    public ByteString readByteString(long byteCount) throws EOFException {
        if (byteCount < 0 || byteCount > 2147483647L) {
            throw new IllegalArgumentException(("byteCount: " + byteCount).toString());
        }
        if (size() < byteCount) {
            throw new EOFException();
        }
        if (byteCount < 4096) {
            return new ByteString(readByteArray(byteCount));
        }
        ByteString byteStringSnapshot = snapshot((int) byteCount);
        skip(byteCount);
        return byteStringSnapshot;
    }

    @NotNull
    public final Buffer readFrom(@NotNull InputStream input, long byteCount) throws IOException {
        kotlin.jvm.internal.j.e(input, "input");
        if (byteCount >= 0) {
            readFrom(input, byteCount, false);
            return this;
        }
        throw new IllegalArgumentException(("byteCount < 0: " + byteCount).toString());
    }

    @Override // okio.BufferedSource
    @NotNull
    public String readString(long byteCount, @NotNull Charset charset) throws EOFException {
        kotlin.jvm.internal.j.e(charset, "charset");
        if (byteCount < 0 || byteCount > 2147483647L) {
            throw new IllegalArgumentException(("byteCount: " + byteCount).toString());
        }
        if (this.size < byteCount) {
            throw new EOFException();
        }
        if (byteCount == 0) {
            return "";
        }
        Segment segment = this.head;
        kotlin.jvm.internal.j.b(segment);
        int i2 = segment.pos;
        if (i2 + byteCount > segment.limit) {
            return new String(readByteArray(byteCount), charset);
        }
        int i3 = (int) byteCount;
        String str = new String(segment.data, i2, i3, charset);
        int i4 = segment.pos + i3;
        segment.pos = i4;
        this.size -= byteCount;
        if (i4 == segment.limit) {
            this.head = segment.pop();
            SegmentPool.recycle(segment);
        }
        return str;
    }

    @JvmOverloads
    @NotNull
    public final UnsafeCursor readUnsafe(@NotNull UnsafeCursor unsafeCursor) {
        kotlin.jvm.internal.j.e(unsafeCursor, "unsafeCursor");
        return okio.internal.Buffer.commonReadUnsafe(this, unsafeCursor);
    }

    @Override // okio.BufferedSource
    @NotNull
    public String readUtf8(long byteCount) throws EOFException {
        return readString(byteCount, C1624d.f51451b);
    }

    @Override // okio.BufferedSource
    @NotNull
    public String readUtf8LineStrict(long limit) throws EOFException {
        if (limit < 0) {
            throw new IllegalArgumentException(("limit < 0: " + limit).toString());
        }
        long j2 = LocationRequestCompat.PASSIVE_INTERVAL;
        if (limit != LocationRequestCompat.PASSIVE_INTERVAL) {
            j2 = limit + 1;
        }
        long j3 = j2;
        long jIndexOf = indexOf((byte) 10, 0L, j3);
        if (jIndexOf != -1) {
            return okio.internal.Buffer.readUtf8Line(this, jIndexOf);
        }
        if (j3 < size() && getByte(j3 - 1) == 13 && getByte(j3) == 10) {
            return okio.internal.Buffer.readUtf8Line(this, j3);
        }
        Buffer buffer = new Buffer();
        copyTo(buffer, 0L, Math.min(32, size()));
        throw new EOFException("\\n not found: limit=" + Math.min(size(), limit) + " content=" + buffer.readByteString().hex() + (char) 8230);
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer writeByte(int b3) {
        Segment segmentWritableSegment$okio = writableSegment$okio(1);
        byte[] bArr = segmentWritableSegment$okio.data;
        int i2 = segmentWritableSegment$okio.limit;
        segmentWritableSegment$okio.limit = i2 + 1;
        bArr[i2] = (byte) b3;
        setSize$okio(size() + 1);
        return this;
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer writeDecimalLong(long v2) {
        boolean z2;
        if (v2 == 0) {
            return writeByte(48);
        }
        int i2 = 1;
        if (v2 < 0) {
            v2 = -v2;
            if (v2 < 0) {
                return writeUtf8("-9223372036854775808");
            }
            z2 = true;
        } else {
            z2 = false;
        }
        if (v2 >= 100000000) {
            i2 = v2 < 1000000000000L ? v2 < RealConnection.IDLE_CONNECTION_HEALTHY_NS ? v2 < C.NANOS_PER_SECOND ? 9 : 10 : v2 < 100000000000L ? 11 : 12 : v2 < 1000000000000000L ? v2 < 10000000000000L ? 13 : v2 < 100000000000000L ? 14 : 15 : v2 < 100000000000000000L ? v2 < 10000000000000000L ? 16 : 17 : v2 < 1000000000000000000L ? 18 : 19;
        } else if (v2 >= 10000) {
            i2 = v2 < C.MICROS_PER_SECOND ? v2 < 100000 ? 5 : 6 : v2 < 10000000 ? 7 : 8;
        } else if (v2 >= 100) {
            i2 = v2 < 1000 ? 3 : 4;
        } else if (v2 >= 10) {
            i2 = 2;
        }
        if (z2) {
            i2++;
        }
        Segment segmentWritableSegment$okio = writableSegment$okio(i2);
        byte[] bArr = segmentWritableSegment$okio.data;
        int i3 = segmentWritableSegment$okio.limit + i2;
        while (v2 != 0) {
            long j2 = 10;
            i3--;
            bArr[i3] = okio.internal.Buffer.getHEX_DIGIT_BYTES()[(int) (v2 % j2)];
            v2 /= j2;
        }
        if (z2) {
            bArr[i3 - 1] = 45;
        }
        segmentWritableSegment$okio.limit += i2;
        setSize$okio(size() + i2);
        return this;
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer writeHexadecimalUnsignedLong(long v2) {
        if (v2 == 0) {
            return writeByte(48);
        }
        long j2 = (v2 >>> 1) | v2;
        long j3 = j2 | (j2 >>> 2);
        long j4 = j3 | (j3 >>> 4);
        long j5 = j4 | (j4 >>> 8);
        long j6 = j5 | (j5 >>> 16);
        long j7 = j6 | (j6 >>> 32);
        long j8 = j7 - ((j7 >>> 1) & 6148914691236517205L);
        long j9 = ((j8 >>> 2) & 3689348814741910323L) + (j8 & 3689348814741910323L);
        long j10 = ((j9 >>> 4) + j9) & 1085102592571150095L;
        long j11 = j10 + (j10 >>> 8);
        long j12 = j11 + (j11 >>> 16);
        int i2 = (int) ((((j12 & 63) + ((j12 >>> 32) & 63)) + 3) / 4);
        Segment segmentWritableSegment$okio = writableSegment$okio(i2);
        byte[] bArr = segmentWritableSegment$okio.data;
        int i3 = segmentWritableSegment$okio.limit;
        for (int i4 = (i3 + i2) - 1; i4 >= i3; i4--) {
            bArr[i4] = okio.internal.Buffer.getHEX_DIGIT_BYTES()[(int) (15 & v2)];
            v2 >>>= 4;
        }
        segmentWritableSegment$okio.limit += i2;
        setSize$okio(size() + i2);
        return this;
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer writeInt(int i2) {
        Segment segmentWritableSegment$okio = writableSegment$okio(4);
        byte[] bArr = segmentWritableSegment$okio.data;
        int i3 = segmentWritableSegment$okio.limit;
        bArr[i3] = (byte) ((i2 >>> 24) & 255);
        bArr[i3 + 1] = (byte) ((i2 >>> 16) & 255);
        bArr[i3 + 2] = (byte) ((i2 >>> 8) & 255);
        bArr[i3 + 3] = (byte) (i2 & 255);
        segmentWritableSegment$okio.limit = i3 + 4;
        setSize$okio(size() + 4);
        return this;
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer writeIntLe(int i2) {
        return writeInt(SegmentedByteString.reverseBytes(i2));
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer writeLong(long v2) {
        Segment segmentWritableSegment$okio = writableSegment$okio(8);
        byte[] bArr = segmentWritableSegment$okio.data;
        int i2 = segmentWritableSegment$okio.limit;
        bArr[i2] = (byte) ((v2 >>> 56) & 255);
        bArr[i2 + 1] = (byte) ((v2 >>> 48) & 255);
        bArr[i2 + 2] = (byte) ((v2 >>> 40) & 255);
        bArr[i2 + 3] = (byte) ((v2 >>> 32) & 255);
        bArr[i2 + 4] = (byte) ((v2 >>> 24) & 255);
        bArr[i2 + 5] = (byte) ((v2 >>> 16) & 255);
        bArr[i2 + 6] = (byte) ((v2 >>> 8) & 255);
        bArr[i2 + 7] = (byte) (v2 & 255);
        segmentWritableSegment$okio.limit = i2 + 8;
        setSize$okio(size() + 8);
        return this;
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer writeLongLe(long v2) {
        return writeLong(SegmentedByteString.reverseBytes(v2));
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer writeShort(int s2) {
        Segment segmentWritableSegment$okio = writableSegment$okio(2);
        byte[] bArr = segmentWritableSegment$okio.data;
        int i2 = segmentWritableSegment$okio.limit;
        bArr[i2] = (byte) ((s2 >>> 8) & 255);
        bArr[i2 + 1] = (byte) (s2 & 255);
        segmentWritableSegment$okio.limit = i2 + 2;
        setSize$okio(size() + 2);
        return this;
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer writeShortLe(int s2) {
        return writeShort((int) SegmentedByteString.reverseBytes((short) s2));
    }

    @JvmOverloads
    @NotNull
    public final Buffer writeTo(@NotNull OutputStream out, long byteCount) throws IOException {
        kotlin.jvm.internal.j.e(out, "out");
        SegmentedByteString.checkOffsetAndCount(this.size, 0L, byteCount);
        Segment segment = this.head;
        long j2 = byteCount;
        while (j2 > 0) {
            kotlin.jvm.internal.j.b(segment);
            int iMin = (int) Math.min(j2, segment.limit - segment.pos);
            out.write(segment.data, segment.pos, iMin);
            int i2 = segment.pos + iMin;
            segment.pos = i2;
            long j3 = iMin;
            this.size -= j3;
            j2 -= j3;
            if (i2 == segment.limit) {
                Segment segmentPop = segment.pop();
                this.head = segmentPop;
                SegmentPool.recycle(segment);
                segment = segmentPop;
            }
        }
        return this;
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer writeUtf8CodePoint(int codePoint) {
        if (codePoint < 128) {
            writeByte(codePoint);
            return this;
        }
        if (codePoint < 2048) {
            Segment segmentWritableSegment$okio = writableSegment$okio(2);
            byte[] bArr = segmentWritableSegment$okio.data;
            int i2 = segmentWritableSegment$okio.limit;
            bArr[i2] = (byte) ((codePoint >> 6) | MediaPlayer.MEDIA_PLAYER_OPTION_SET_KSY_FRAME_WAIT);
            bArr[i2 + 1] = (byte) ((codePoint & 63) | 128);
            segmentWritableSegment$okio.limit = i2 + 2;
            setSize$okio(size() + 2);
            return this;
        }
        if (55296 <= codePoint && codePoint < 57344) {
            writeByte(63);
            return this;
        }
        if (codePoint < 65536) {
            Segment segmentWritableSegment$okio2 = writableSegment$okio(3);
            byte[] bArr2 = segmentWritableSegment$okio2.data;
            int i3 = segmentWritableSegment$okio2.limit;
            bArr2[i3] = (byte) ((codePoint >> 12) | 224);
            bArr2[i3 + 1] = (byte) (((codePoint >> 6) & 63) | 128);
            bArr2[i3 + 2] = (byte) ((codePoint & 63) | 128);
            segmentWritableSegment$okio2.limit = i3 + 3;
            setSize$okio(size() + 3);
            return this;
        }
        if (codePoint > 1114111) {
            throw new IllegalArgumentException("Unexpected code point: 0x" + SegmentedByteString.toHexString(codePoint));
        }
        Segment segmentWritableSegment$okio3 = writableSegment$okio(4);
        byte[] bArr3 = segmentWritableSegment$okio3.data;
        int i4 = segmentWritableSegment$okio3.limit;
        bArr3[i4] = (byte) ((codePoint >> 18) | MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA);
        bArr3[i4 + 1] = (byte) (((codePoint >> 12) & 63) | 128);
        bArr3[i4 + 2] = (byte) (((codePoint >> 6) & 63) | 128);
        bArr3[i4 + 3] = (byte) ((codePoint & 63) | 128);
        segmentWritableSegment$okio3.limit = i4 + 4;
        setSize$okio(size() + 4);
        return this;
    }

    public static /* synthetic */ Buffer copyTo$default(Buffer buffer, Buffer buffer2, long j2, long j3, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            j2 = 0;
        }
        return buffer.copyTo(buffer2, j2, j3);
    }

    @JvmOverloads
    @NotNull
    public final Buffer copyTo(@NotNull OutputStream out, long offset, long byteCount) throws IOException {
        kotlin.jvm.internal.j.e(out, "out");
        long j2 = offset;
        SegmentedByteString.checkOffsetAndCount(this.size, j2, byteCount);
        if (byteCount != 0) {
            Segment segment = this.head;
            while (true) {
                kotlin.jvm.internal.j.b(segment);
                int i2 = segment.limit;
                int i3 = segment.pos;
                if (j2 < i2 - i3) {
                    break;
                }
                j2 -= i2 - i3;
                segment = segment.next;
            }
            Segment segment2 = segment;
            long j3 = byteCount;
            while (j3 > 0) {
                kotlin.jvm.internal.j.b(segment2);
                int iMin = (int) Math.min(segment2.limit - r1, j3);
                out.write(segment2.data, (int) (segment2.pos + j2), iMin);
                j3 -= iMin;
                segment2 = segment2.next;
                j2 = 0;
            }
        }
        return this;
    }

    @Override // okio.BufferedSource
    public long indexOf(@NotNull ByteString bytes) throws IOException {
        kotlin.jvm.internal.j.e(bytes, "bytes");
        return indexOf(bytes, 0L);
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer writeString(@NotNull String string, @NotNull Charset charset) {
        kotlin.jvm.internal.j.e(string, "string");
        kotlin.jvm.internal.j.e(charset, "charset");
        return writeString(string, 0, string.length(), charset);
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer writeUtf8(@NotNull String string) {
        kotlin.jvm.internal.j.e(string, "string");
        return writeUtf8(string, 0, string.length());
    }

    public static /* synthetic */ Buffer copyTo$default(Buffer buffer, Buffer buffer2, long j2, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            j2 = 0;
        }
        return buffer.copyTo(buffer2, j2);
    }

    private final void readFrom(InputStream input, long byteCount, boolean forever) throws IOException {
        while (true) {
            if (byteCount <= 0 && !forever) {
                return;
            }
            Segment segmentWritableSegment$okio = writableSegment$okio(1);
            int i2 = input.read(segmentWritableSegment$okio.data, segmentWritableSegment$okio.limit, (int) Math.min(byteCount, 8192 - segmentWritableSegment$okio.limit));
            if (i2 == -1) {
                if (segmentWritableSegment$okio.pos == segmentWritableSegment$okio.limit) {
                    this.head = segmentWritableSegment$okio.pop();
                    SegmentPool.recycle(segmentWritableSegment$okio);
                }
                if (!forever) {
                    throw new EOFException();
                }
                return;
            }
            segmentWritableSegment$okio.limit += i2;
            long j2 = i2;
            this.size += j2;
            byteCount -= j2;
        }
    }

    @Override // okio.BufferedSource
    public long indexOf(byte b3, long fromIndex, long toIndex) {
        Segment segment;
        int i2;
        long size = 0;
        if (0 > fromIndex || fromIndex > toIndex) {
            throw new IllegalArgumentException(("size=" + size() + " fromIndex=" + fromIndex + " toIndex=" + toIndex).toString());
        }
        if (toIndex > size()) {
            toIndex = size();
        }
        if (fromIndex == toIndex || (segment = this.head) == null) {
            return -1L;
        }
        if (size() - fromIndex < fromIndex) {
            size = size();
            while (size > fromIndex) {
                segment = segment.prev;
                kotlin.jvm.internal.j.b(segment);
                size -= segment.limit - segment.pos;
            }
            while (size < toIndex) {
                byte[] bArr = segment.data;
                int iMin = (int) Math.min(segment.limit, (segment.pos + toIndex) - size);
                i2 = (int) ((segment.pos + fromIndex) - size);
                while (i2 < iMin) {
                    if (bArr[i2] != b3) {
                        i2++;
                    }
                }
                size += segment.limit - segment.pos;
                segment = segment.next;
                kotlin.jvm.internal.j.b(segment);
                fromIndex = size;
            }
            return -1L;
        }
        while (true) {
            long j2 = (segment.limit - segment.pos) + size;
            if (j2 > fromIndex) {
                break;
            }
            segment = segment.next;
            kotlin.jvm.internal.j.b(segment);
            size = j2;
        }
        while (size < toIndex) {
            byte[] bArr2 = segment.data;
            int iMin2 = (int) Math.min(segment.limit, (segment.pos + toIndex) - size);
            i2 = (int) ((segment.pos + fromIndex) - size);
            while (i2 < iMin2) {
                if (bArr2[i2] != b3) {
                    i2++;
                }
            }
            size += segment.limit - segment.pos;
            segment = segment.next;
            kotlin.jvm.internal.j.b(segment);
            fromIndex = size;
        }
        return -1L;
        return (i2 - segment.pos) + size;
    }

    @NotNull
    public final ByteString snapshot(int byteCount) {
        if (byteCount == 0) {
            return ByteString.EMPTY;
        }
        SegmentedByteString.checkOffsetAndCount(size(), 0L, byteCount);
        Segment segment = this.head;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (i3 < byteCount) {
            kotlin.jvm.internal.j.b(segment);
            int i5 = segment.limit;
            int i6 = segment.pos;
            if (i5 != i6) {
                i3 += i5 - i6;
                i4++;
                segment = segment.next;
            } else {
                throw new AssertionError("s.limit == s.pos");
            }
        }
        byte[][] bArr = new byte[i4][];
        int[] iArr = new int[i4 * 2];
        Segment segment2 = this.head;
        int i7 = 0;
        while (i2 < byteCount) {
            kotlin.jvm.internal.j.b(segment2);
            bArr[i7] = segment2.data;
            i2 += segment2.limit - segment2.pos;
            iArr[i7] = Math.min(i2, byteCount);
            iArr[i7 + i4] = segment2.pos;
            segment2.shared = true;
            i7++;
            segment2 = segment2.next;
        }
        return new C1744SegmentedByteString(bArr, iArr);
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer writeUtf8(@NotNull String string, int beginIndex, int endIndex) {
        char cCharAt;
        kotlin.jvm.internal.j.e(string, "string");
        if (beginIndex < 0) {
            throw new IllegalArgumentException(("beginIndex < 0: " + beginIndex).toString());
        }
        if (endIndex >= beginIndex) {
            if (endIndex > string.length()) {
                throw new IllegalArgumentException(("endIndex > string.length: " + endIndex + " > " + string.length()).toString());
            }
            while (beginIndex < endIndex) {
                char cCharAt2 = string.charAt(beginIndex);
                if (cCharAt2 < 128) {
                    Segment segmentWritableSegment$okio = writableSegment$okio(1);
                    byte[] bArr = segmentWritableSegment$okio.data;
                    int i2 = segmentWritableSegment$okio.limit - beginIndex;
                    int iMin = Math.min(endIndex, 8192 - i2);
                    int i3 = beginIndex + 1;
                    bArr[beginIndex + i2] = (byte) cCharAt2;
                    while (true) {
                        beginIndex = i3;
                        if (beginIndex >= iMin || (cCharAt = string.charAt(beginIndex)) >= 128) {
                            break;
                        }
                        i3 = beginIndex + 1;
                        bArr[beginIndex + i2] = (byte) cCharAt;
                    }
                    int i4 = segmentWritableSegment$okio.limit;
                    int i5 = (i2 + beginIndex) - i4;
                    segmentWritableSegment$okio.limit = i4 + i5;
                    setSize$okio(size() + i5);
                } else {
                    if (cCharAt2 < 2048) {
                        Segment segmentWritableSegment$okio2 = writableSegment$okio(2);
                        byte[] bArr2 = segmentWritableSegment$okio2.data;
                        int i6 = segmentWritableSegment$okio2.limit;
                        bArr2[i6] = (byte) ((cCharAt2 >> 6) | MediaPlayer.MEDIA_PLAYER_OPTION_SET_KSY_FRAME_WAIT);
                        bArr2[i6 + 1] = (byte) ((cCharAt2 & '?') | 128);
                        segmentWritableSegment$okio2.limit = i6 + 2;
                        setSize$okio(size() + 2);
                    } else if (cCharAt2 >= 55296 && cCharAt2 <= 57343) {
                        int i7 = beginIndex + 1;
                        char cCharAt3 = i7 < endIndex ? string.charAt(i7) : (char) 0;
                        if (cCharAt2 <= 56319 && 56320 <= cCharAt3 && cCharAt3 < 57344) {
                            int i8 = (((cCharAt2 & 1023) << 10) | (cCharAt3 & 1023)) + 65536;
                            Segment segmentWritableSegment$okio3 = writableSegment$okio(4);
                            byte[] bArr3 = segmentWritableSegment$okio3.data;
                            int i9 = segmentWritableSegment$okio3.limit;
                            bArr3[i9] = (byte) ((i8 >> 18) | MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA);
                            bArr3[i9 + 1] = (byte) (((i8 >> 12) & 63) | 128);
                            bArr3[i9 + 2] = (byte) (((i8 >> 6) & 63) | 128);
                            bArr3[i9 + 3] = (byte) ((i8 & 63) | 128);
                            segmentWritableSegment$okio3.limit = i9 + 4;
                            setSize$okio(size() + 4);
                            beginIndex += 2;
                        } else {
                            writeByte(63);
                            beginIndex = i7;
                        }
                    } else {
                        Segment segmentWritableSegment$okio4 = writableSegment$okio(3);
                        byte[] bArr4 = segmentWritableSegment$okio4.data;
                        int i10 = segmentWritableSegment$okio4.limit;
                        bArr4[i10] = (byte) ((cCharAt2 >> '\f') | 224);
                        bArr4[i10 + 1] = (byte) ((63 & (cCharAt2 >> 6)) | 128);
                        bArr4[i10 + 2] = (byte) ((cCharAt2 & '?') | 128);
                        segmentWritableSegment$okio4.limit = i10 + 3;
                        setSize$okio(size() + 3);
                    }
                    beginIndex++;
                }
            }
            return this;
        }
        throw new IllegalArgumentException(("endIndex < beginIndex: " + endIndex + " < " + beginIndex).toString());
    }

    @Override // okio.BufferedSource
    public void readFully(@NotNull byte[] sink) throws EOFException {
        kotlin.jvm.internal.j.e(sink, "sink");
        int i2 = 0;
        while (i2 < sink.length) {
            int i3 = read(sink, i2, sink.length - i2);
            if (i3 == -1) {
                throw new EOFException();
            }
            i2 += i3;
        }
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer writeString(@NotNull String string, int beginIndex, int endIndex, @NotNull Charset charset) {
        kotlin.jvm.internal.j.e(string, "string");
        kotlin.jvm.internal.j.e(charset, "charset");
        if (beginIndex < 0) {
            throw new IllegalArgumentException(("beginIndex < 0: " + beginIndex).toString());
        }
        if (endIndex >= beginIndex) {
            if (endIndex <= string.length()) {
                if (kotlin.jvm.internal.j.a(charset, C1624d.f51451b)) {
                    return writeUtf8(string, beginIndex, endIndex);
                }
                String strSubstring = string.substring(beginIndex, endIndex);
                kotlin.jvm.internal.j.d(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
                byte[] bytes = strSubstring.getBytes(charset);
                kotlin.jvm.internal.j.d(bytes, "this as java.lang.String).getBytes(charset)");
                return write(bytes, 0, bytes.length);
            }
            throw new IllegalArgumentException(("endIndex > string.length: " + endIndex + " > " + string.length()).toString());
        }
        throw new IllegalArgumentException(("endIndex < beginIndex: " + endIndex + " < " + beginIndex).toString());
    }

    @Override // java.nio.channels.WritableByteChannel
    public int write(@NotNull ByteBuffer source) throws IOException {
        kotlin.jvm.internal.j.e(source, "source");
        int iRemaining = source.remaining();
        int i2 = iRemaining;
        while (i2 > 0) {
            Segment segmentWritableSegment$okio = writableSegment$okio(1);
            int iMin = Math.min(i2, 8192 - segmentWritableSegment$okio.limit);
            source.get(segmentWritableSegment$okio.data, segmentWritableSegment$okio.limit, iMin);
            i2 -= iMin;
            segmentWritableSegment$okio.limit += iMin;
        }
        this.size += iRemaining;
        return iRemaining;
    }

    @Override // okio.BufferedSource
    public int read(@NotNull byte[] sink) {
        kotlin.jvm.internal.j.e(sink, "sink");
        return read(sink, 0, sink.length);
    }

    @Override // okio.BufferedSource
    public int read(@NotNull byte[] sink, int offset, int byteCount) {
        kotlin.jvm.internal.j.e(sink, "sink");
        SegmentedByteString.checkOffsetAndCount(sink.length, offset, byteCount);
        Segment segment = this.head;
        if (segment == null) {
            return -1;
        }
        int iMin = Math.min(byteCount, segment.limit - segment.pos);
        byte[] bArr = segment.data;
        int i2 = segment.pos;
        kotlin.collections.l.d(bArr, sink, offset, i2, i2 + iMin);
        segment.pos += iMin;
        setSize$okio(size() - iMin);
        if (segment.pos == segment.limit) {
            this.head = segment.pop();
            SegmentPool.recycle(segment);
        }
        return iMin;
    }

    @NotNull
    public final Buffer copyTo(@NotNull Buffer out, long offset) {
        kotlin.jvm.internal.j.e(out, "out");
        return copyTo(out, offset, this.size - offset);
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer write(@NotNull ByteString byteString) {
        kotlin.jvm.internal.j.e(byteString, "byteString");
        byteString.write$okio(this, 0, byteString.size());
        return this;
    }

    @NotNull
    public final Buffer copyTo(@NotNull Buffer out, long offset, long byteCount) {
        kotlin.jvm.internal.j.e(out, "out");
        long j2 = offset;
        SegmentedByteString.checkOffsetAndCount(size(), j2, byteCount);
        if (byteCount != 0) {
            out.setSize$okio(out.size() + byteCount);
            Segment segment = this.head;
            while (true) {
                kotlin.jvm.internal.j.b(segment);
                int i2 = segment.limit;
                int i3 = segment.pos;
                if (j2 < i2 - i3) {
                    break;
                }
                j2 -= i2 - i3;
                segment = segment.next;
            }
            Segment segment2 = segment;
            long j3 = byteCount;
            while (j3 > 0) {
                kotlin.jvm.internal.j.b(segment2);
                Segment segmentSharedCopy = segment2.sharedCopy();
                int i4 = segmentSharedCopy.pos + ((int) j2);
                segmentSharedCopy.pos = i4;
                segmentSharedCopy.limit = Math.min(i4 + ((int) j3), segmentSharedCopy.limit);
                Segment segment3 = out.head;
                if (segment3 == null) {
                    segmentSharedCopy.prev = segmentSharedCopy;
                    segmentSharedCopy.next = segmentSharedCopy;
                    out.head = segmentSharedCopy;
                } else {
                    kotlin.jvm.internal.j.b(segment3);
                    Segment segment4 = segment3.prev;
                    kotlin.jvm.internal.j.b(segment4);
                    segment4.push(segmentSharedCopy);
                }
                j3 -= segmentSharedCopy.limit - segmentSharedCopy.pos;
                segment2 = segment2.next;
                j2 = 0;
            }
        }
        return this;
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer write(@NotNull ByteString byteString, int offset, int byteCount) {
        kotlin.jvm.internal.j.e(byteString, "byteString");
        byteString.write$okio(this, offset, byteCount);
        return this;
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer write(@NotNull byte[] source) {
        kotlin.jvm.internal.j.e(source, "source");
        return write(source, 0, source.length);
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer write(@NotNull byte[] source, int offset, int byteCount) {
        kotlin.jvm.internal.j.e(source, "source");
        long j2 = byteCount;
        SegmentedByteString.checkOffsetAndCount(source.length, offset, j2);
        int i2 = byteCount + offset;
        while (offset < i2) {
            Segment segmentWritableSegment$okio = writableSegment$okio(1);
            int iMin = Math.min(i2 - offset, 8192 - segmentWritableSegment$okio.limit);
            int i3 = offset + iMin;
            kotlin.collections.l.d(source, segmentWritableSegment$okio.data, segmentWritableSegment$okio.limit, offset, i3);
            segmentWritableSegment$okio.limit += iMin;
            offset = i3;
        }
        setSize$okio(size() + j2);
        return this;
    }

    @Override // okio.Source
    public long read(@NotNull Buffer sink, long byteCount) {
        kotlin.jvm.internal.j.e(sink, "sink");
        if (byteCount < 0) {
            throw new IllegalArgumentException(("byteCount < 0: " + byteCount).toString());
        }
        if (size() == 0) {
            return -1L;
        }
        if (byteCount > size()) {
            byteCount = size();
        }
        sink.write(this, byteCount);
        return byteCount;
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer write(@NotNull Source source, long byteCount) throws IOException {
        kotlin.jvm.internal.j.e(source, "source");
        while (byteCount > 0) {
            long j2 = source.read(this, byteCount);
            if (j2 == -1) {
                throw new EOFException();
            }
            byteCount -= j2;
        }
        return this;
    }

    @Override // okio.BufferedSource
    public long indexOf(@NotNull ByteString bytes, long fromIndex) throws IOException {
        int i2;
        long j2 = fromIndex;
        kotlin.jvm.internal.j.e(bytes, "bytes");
        if (bytes.size() <= 0) {
            throw new IllegalArgumentException("bytes is empty");
        }
        long size = 0;
        if (j2 >= 0) {
            Segment segment = this.head;
            if (segment == null) {
                return -1L;
            }
            if (size() - j2 < j2) {
                size = size();
                while (size > j2) {
                    segment = segment.prev;
                    kotlin.jvm.internal.j.b(segment);
                    size -= segment.limit - segment.pos;
                }
                byte[] bArrInternalArray$okio = bytes.internalArray$okio();
                byte b3 = bArrInternalArray$okio[0];
                int size2 = bytes.size();
                long size3 = (size() - size2) + 1;
                while (size < size3) {
                    byte[] bArr = segment.data;
                    long j3 = size3;
                    int iMin = (int) Math.min(segment.limit, (segment.pos + size3) - size);
                    i2 = (int) ((segment.pos + j2) - size);
                    while (i2 < iMin) {
                        if (bArr[i2] != b3 || !okio.internal.Buffer.rangeEquals(segment, i2 + 1, bArrInternalArray$okio, 1, size2)) {
                            i2++;
                        }
                    }
                    size += segment.limit - segment.pos;
                    segment = segment.next;
                    kotlin.jvm.internal.j.b(segment);
                    j2 = size;
                    size3 = j3;
                }
                return -1L;
            }
            while (true) {
                long j4 = (segment.limit - segment.pos) + size;
                if (j4 > j2) {
                    break;
                }
                segment = segment.next;
                kotlin.jvm.internal.j.b(segment);
                size = j4;
            }
            byte[] bArrInternalArray$okio2 = bytes.internalArray$okio();
            byte b4 = bArrInternalArray$okio2[0];
            int size4 = bytes.size();
            long size5 = (size() - size4) + 1;
            while (size < size5) {
                byte[] bArr2 = segment.data;
                int iMin2 = (int) Math.min(segment.limit, (segment.pos + size5) - size);
                i2 = (int) ((segment.pos + j2) - size);
                while (i2 < iMin2) {
                    if (bArr2[i2] == b4 && okio.internal.Buffer.rangeEquals(segment, i2 + 1, bArrInternalArray$okio2, 1, size4)) {
                    }
                    i2++;
                }
                size += segment.limit - segment.pos;
                segment = segment.next;
                kotlin.jvm.internal.j.b(segment);
                j2 = size;
            }
            return -1L;
            return (i2 - segment.pos) + size;
        }
        throw new IllegalArgumentException(("fromIndex < 0: " + j2).toString());
    }

    @Override // okio.Sink
    public void write(@NotNull Buffer source, long byteCount) {
        Segment segment;
        kotlin.jvm.internal.j.e(source, "source");
        if (source != this) {
            SegmentedByteString.checkOffsetAndCount(source.size(), 0L, byteCount);
            while (byteCount > 0) {
                Segment segment2 = source.head;
                kotlin.jvm.internal.j.b(segment2);
                int i2 = segment2.limit;
                kotlin.jvm.internal.j.b(source.head);
                if (byteCount < i2 - r1.pos) {
                    Segment segment3 = this.head;
                    if (segment3 != null) {
                        kotlin.jvm.internal.j.b(segment3);
                        segment = segment3.prev;
                    } else {
                        segment = null;
                    }
                    if (segment != null && segment.owner) {
                        if ((segment.limit + byteCount) - (segment.shared ? 0 : segment.pos) <= 8192) {
                            Segment segment4 = source.head;
                            kotlin.jvm.internal.j.b(segment4);
                            segment4.writeTo(segment, (int) byteCount);
                            source.setSize$okio(source.size() - byteCount);
                            setSize$okio(size() + byteCount);
                            return;
                        }
                    }
                    Segment segment5 = source.head;
                    kotlin.jvm.internal.j.b(segment5);
                    source.head = segment5.split((int) byteCount);
                }
                Segment segment6 = source.head;
                kotlin.jvm.internal.j.b(segment6);
                long j2 = segment6.limit - segment6.pos;
                source.head = segment6.pop();
                Segment segment7 = this.head;
                if (segment7 == null) {
                    this.head = segment6;
                    segment6.prev = segment6;
                    segment6.next = segment6;
                } else {
                    kotlin.jvm.internal.j.b(segment7);
                    Segment segment8 = segment7.prev;
                    kotlin.jvm.internal.j.b(segment8);
                    segment8.push(segment6).compact();
                }
                source.setSize$okio(source.size() - j2);
                setSize$okio(size() + j2);
                byteCount -= j2;
            }
            return;
        }
        throw new IllegalArgumentException("source == this");
    }
}
