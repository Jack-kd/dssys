package com.flutter.dlna.flutter_dlna.dlna;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.NonNull;
import com.flutter.dlna.flutter_dlna.dlna.DLNAPlayer;
import com.flutter.dlna.flutter_dlna.dlna.bean.DeviceInfo;
import java.text.SimpleDateFormat;
import java.util.Date;
import org.fourthline.cling.android.AndroidUpnpService;
import org.fourthline.cling.model.action.ActionInvocation;
import org.fourthline.cling.model.message.UpnpResponse;
import org.fourthline.cling.model.meta.Device;
import org.fourthline.cling.model.meta.Service;
import org.fourthline.cling.model.types.UDAServiceType;
import org.fourthline.cling.support.avtransport.callback.Play;
import org.fourthline.cling.support.avtransport.callback.SetAVTransportURI;
import org.fourthline.cling.support.avtransport.callback.Stop;
import org.fourthline.cling.support.model.Res;
import org.fourthline.cling.support.model.dlna.DLNAProfiles;
import org.fourthline.cling.support.model.item.VideoItem;
import org.seamless.util.MimeType;
import t0.e;
import u0.InterfaceC1778a;

/* loaded from: classes3.dex */
public final class DLNAPlayer {

    /* renamed from: a, reason: collision with root package name */
    public final Context f30732a;

    /* renamed from: b, reason: collision with root package name */
    public Device f30733b;

    /* renamed from: c, reason: collision with root package name */
    public final UDAServiceType f30734c = new UDAServiceType("AVTransport");

    /* renamed from: d, reason: collision with root package name */
    public String f30735d;

    /* renamed from: e, reason: collision with root package name */
    public String f30736e;

    public class a extends Stop {

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ AndroidUpnpService f30737b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ Service f30738c;

        /* renamed from: d, reason: collision with root package name */
        public final /* synthetic */ String f30739d;

        /* renamed from: e, reason: collision with root package name */
        public final /* synthetic */ InterfaceC1778a f30740e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Service service, AndroidUpnpService androidUpnpService, Service service2, String str, InterfaceC1778a interfaceC1778a) {
            super(service);
            this.f30737b = androidUpnpService;
            this.f30738c = service2;
            this.f30739d = str;
            this.f30740e = interfaceC1778a;
        }

        @Override // org.fourthline.cling.controlpoint.ActionCallback
        public void failure(ActionInvocation actionInvocation, UpnpResponse upnpResponse, String str) {
            DLNAPlayer dLNAPlayer = DLNAPlayer.this;
            dLNAPlayer.h(this.f30737b, this.f30738c, dLNAPlayer.f30735d, this.f30739d, this.f30740e);
        }

        @Override // org.fourthline.cling.support.avtransport.callback.Stop, org.fourthline.cling.controlpoint.ActionCallback
        public void success(ActionInvocation actionInvocation) {
            super.success(actionInvocation);
            DLNAPlayer dLNAPlayer = DLNAPlayer.this;
            dLNAPlayer.h(this.f30737b, this.f30738c, dLNAPlayer.f30735d, this.f30739d, this.f30740e);
        }
    }

    public class b extends SetAVTransportURI {

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ AndroidUpnpService f30742b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ Service f30743c;

        /* renamed from: d, reason: collision with root package name */
        public final /* synthetic */ InterfaceC1778a f30744d;

        public class a extends Play {

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ InterfaceC1778a f30746b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(Service service, InterfaceC1778a interfaceC1778a) {
                super(service);
                this.f30746b = interfaceC1778a;
            }

            @Override // org.fourthline.cling.controlpoint.ActionCallback
            public void failure(ActionInvocation actionInvocation, UpnpResponse upnpResponse, String str) {
                this.f30746b.b(actionInvocation, 4, str);
            }

            @Override // org.fourthline.cling.support.avtransport.callback.Play, org.fourthline.cling.controlpoint.ActionCallback
            public void success(ActionInvocation actionInvocation) {
                super.success(actionInvocation);
                this.f30746b.a(actionInvocation);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(Service service, String str, String str2, AndroidUpnpService androidUpnpService, Service service2, InterfaceC1778a interfaceC1778a) {
            super(service, str, str2);
            this.f30742b = androidUpnpService;
            this.f30743c = service2;
            this.f30744d = interfaceC1778a;
        }

        public static /* synthetic */ void a(b bVar, AndroidUpnpService androidUpnpService, Service service, InterfaceC1778a interfaceC1778a) {
            bVar.getClass();
            androidUpnpService.getControlPoint().execute(bVar.new a(service, interfaceC1778a));
        }

        @Override // org.fourthline.cling.controlpoint.ActionCallback
        public void failure(ActionInvocation actionInvocation, UpnpResponse upnpResponse, String str) {
            this.f30744d.b(actionInvocation, 4, str);
        }

        @Override // org.fourthline.cling.support.avtransport.callback.SetAVTransportURI, org.fourthline.cling.controlpoint.ActionCallback
        public void success(ActionInvocation actionInvocation) {
            super.success(actionInvocation);
            Handler handler = new Handler(Looper.getMainLooper());
            final AndroidUpnpService androidUpnpService = this.f30742b;
            final Service service = this.f30743c;
            final InterfaceC1778a interfaceC1778a = this.f30744d;
            handler.postDelayed(new Runnable() { // from class: t0.g
                @Override // java.lang.Runnable
                public final void run() {
                    DLNAPlayer.b.a(this.f52799b, androidUpnpService, service, interfaceC1778a);
                }
            }, 300L);
        }
    }

    public class c extends Stop {

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ InterfaceC1778a f30748b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(Service service, InterfaceC1778a interfaceC1778a) {
            super(service);
            this.f30748b = interfaceC1778a;
        }

        @Override // org.fourthline.cling.controlpoint.ActionCallback
        public void failure(ActionInvocation actionInvocation, UpnpResponse upnpResponse, String str) {
            this.f30748b.b(actionInvocation, 4, str);
        }

        @Override // org.fourthline.cling.support.avtransport.callback.Stop, org.fourthline.cling.controlpoint.ActionCallback
        public void success(ActionInvocation actionInvocation) {
            super.success(actionInvocation);
            this.f30748b.a(actionInvocation);
        }
    }

    public DLNAPlayer(@NonNull Context context) {
        this.f30732a = context.getApplicationContext();
    }

    public static String f(String str) {
        return str == null ? "" : str.replace("&", "&amp;").replace("<", "&lt;").replace(">", "&gt;").replace("\"", "&quot;").replace("'", "&apos;");
    }

    public static String g(String str) {
        String lowerCase = str.toLowerCase();
        return lowerCase.contains(".m3u8") ? "application/vnd.apple.mpegurl" : lowerCase.contains(".mpd") ? "application/dash+xml" : lowerCase.contains(".mp4") ? DLNAProfiles.DLNAMimeTypes.MIME_VIDEO_MPEG_4 : lowerCase.contains(".mkv") ? DLNAProfiles.DLNAMimeTypes.MIME_VIDEO_MATROSKA : lowerCase.contains(".ts") ? "video/mp2t" : "video/*";
    }

    public final String c(String str, String str2) {
        VideoItem videoItem = new VideoItem(String.valueOf(str.hashCode()), "0", str2, "unknown", new Res(new MimeType("video", "*"), (Long) 0L, str));
        StringBuilder sb = new StringBuilder();
        sb.append("<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"no\"?><DIDL-Lite xmlns=\"urn:schemas-upnp-org:metadata-1-0/DIDL-Lite/\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:upnp=\"urn:schemas-upnp-org:metadata-1-0/upnp/\" xmlns:dlna=\"urn:schemas-dlna-org:metadata-1-0/\">");
        sb.append(String.format("<item id=\"%s\" parentID=\"%s\" restricted=\"1\">", f(videoItem.getId()), f(videoItem.getParentID())));
        sb.append(String.format("<dc:title>%s</dc:title>", f(videoItem.getTitle())));
        sb.append(String.format("<upnp:class>%s</upnp:class>", videoItem.getClazz().getValue()));
        sb.append(String.format("<dc:date>%s</dc:date>", new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss").format(new Date())));
        if (videoItem.getFirstResource() != null) {
            String str3 = "protocolInfo=\"http-get:*:" + g(str) + ":*\"";
            sb.append("<res ");
            sb.append(str3);
            sb.append(">");
            sb.append(f(str));
            sb.append("</res>");
        }
        sb.append("</item>");
        sb.append("</DIDL-Lite>");
        return sb.toString();
    }

    public void d(DeviceInfo deviceInfo) {
        this.f30733b = deviceInfo.getDevice();
    }

    public void e() {
        this.f30733b = null;
        this.f30735d = null;
        this.f30736e = null;
    }

    public final void h(AndroidUpnpService androidUpnpService, Service service, String str, String str2, InterfaceC1778a interfaceC1778a) {
        androidUpnpService.getControlPoint().execute(new b(service, str, str2, androidUpnpService, service, interfaceC1778a));
    }

    public void i(String str, String str2) {
        this.f30735d = str;
        this.f30736e = str2;
    }

    public void j(InterfaceC1778a interfaceC1778a) {
        AndroidUpnpService androidUpnpServiceT = e.s().t();
        if (androidUpnpServiceT == null) {
            interfaceC1778a.b(null, 6, "UPnP service not ready");
            return;
        }
        if (this.f30733b == null) {
            interfaceC1778a.b(null, 6, "Device not selected");
            return;
        }
        String str = this.f30735d;
        if (str == null || str.trim().isEmpty()) {
            interfaceC1778a.b(null, 6, "URL is empty");
            return;
        }
        Service serviceFindService = this.f30733b.findService(this.f30734c);
        if (serviceFindService == null) {
            interfaceC1778a.b(null, 5, "AVTransport not found");
        } else {
            androidUpnpServiceT.getControlPoint().execute(new a(serviceFindService, androidUpnpServiceT, serviceFindService, c(this.f30735d, this.f30736e), interfaceC1778a));
        }
    }

    public void k(InterfaceC1778a interfaceC1778a) {
        Device device;
        AndroidUpnpService androidUpnpServiceT = e.s().t();
        if (androidUpnpServiceT == null || (device = this.f30733b) == null) {
            interfaceC1778a.b(null, 6, "Not ready");
            return;
        }
        Service serviceFindService = device.findService(this.f30734c);
        if (serviceFindService == null) {
            interfaceC1778a.b(null, 5, "AVTransport not found");
        } else {
            androidUpnpServiceT.getControlPoint().execute(new c(serviceFindService, interfaceC1778a));
        }
    }
}
