package u0;

import com.flutter.dlna.flutter_dlna.dlna.bean.DeviceInfo;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import org.fourthline.cling.model.meta.Device;
import org.fourthline.cling.model.types.UDADeviceType;

/* renamed from: u0.b, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public abstract class AbstractC1779b {

    /* renamed from: a, reason: collision with root package name */
    public final UDADeviceType f52804a = new UDADeviceType("MediaRenderer");

    public final void a(Collection collection) {
        ArrayList arrayList = new ArrayList();
        if (collection != null) {
            Iterator it = collection.iterator();
            while (it.hasNext()) {
                Device device = (Device) it.next();
                boolean z2 = device.getType() != null && this.f52804a.equals(device.getType());
                try {
                    Device[] deviceArrFindDevices = device.findDevices(this.f52804a);
                    z2 = (deviceArrFindDevices == null || deviceArrFindDevices.length <= 0) ? z2 : true;
                } catch (Throwable unused) {
                }
                if (z2) {
                    arrayList.add(new DeviceInfo(device, device.getIdentity().getUdn().getIdentifierString(), (device.getDetails() == null || device.getDetails().getFriendlyName() == null) ? device.getDisplayString() : device.getDetails().getFriendlyName()));
                }
            }
        }
        b(arrayList);
    }

    public abstract void b(List list);
}
