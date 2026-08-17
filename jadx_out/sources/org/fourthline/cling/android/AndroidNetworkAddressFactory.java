package org.fourthline.cling.android;

import java.lang.reflect.Field;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.fourthline.cling.transport.impl.NetworkAddressFactoryImpl;
import org.fourthline.cling.transport.spi.InitializationException;

/* loaded from: classes5.dex */
public class AndroidNetworkAddressFactory extends NetworkAddressFactoryImpl {
    private static final Logger log = Logger.getLogger(AndroidUpnpServiceConfiguration.class.getName());

    public AndroidNetworkAddressFactory(int i2) {
        super(i2);
    }

    @Override // org.fourthline.cling.transport.impl.NetworkAddressFactoryImpl
    public void discoverNetworkInterfaces() throws InitializationException {
        try {
            super.discoverNetworkInterfaces();
        } catch (Exception e2) {
            log.warning("Exception while enumerating network interfaces, trying once more: " + e2);
            super.discoverNetworkInterfaces();
        }
    }

    @Override // org.fourthline.cling.transport.impl.NetworkAddressFactoryImpl, org.fourthline.cling.transport.spi.NetworkAddressFactory
    public InetAddress getLocalAddress(NetworkInterface networkInterface, boolean z2, InetAddress inetAddress) {
        for (InetAddress inetAddress2 : getInetAddresses(networkInterface)) {
            if (z2 && (inetAddress2 instanceof Inet6Address)) {
                return inetAddress2;
            }
            if (!z2 && (inetAddress2 instanceof Inet4Address)) {
                return inetAddress2;
            }
        }
        throw new IllegalStateException("Can't find any IPv4 or IPv6 address on interface: " + networkInterface.getDisplayName());
    }

    @Override // org.fourthline.cling.transport.impl.NetworkAddressFactoryImpl
    public boolean isUsableAddress(NetworkInterface networkInterface, InetAddress inetAddress) throws IllegalAccessException, NoSuchFieldException, SecurityException, IllegalArgumentException {
        Field declaredField;
        Object obj;
        boolean zIsUsableAddress = super.isUsableAddress(networkInterface, inetAddress);
        if (zIsUsableAddress) {
            String hostAddress = inetAddress.getHostAddress();
            try {
                try {
                    Field declaredField2 = InetAddress.class.getDeclaredField("holder");
                    declaredField2.setAccessible(true);
                    obj = declaredField2.get(inetAddress);
                    declaredField = obj.getClass().getDeclaredField("hostName");
                } catch (NoSuchFieldException unused) {
                    declaredField = InetAddress.class.getDeclaredField("hostName");
                    obj = inetAddress;
                }
                if (declaredField == null || hostAddress == null) {
                    return false;
                }
                declaredField.setAccessible(true);
                declaredField.set(obj, hostAddress);
            } catch (Exception e2) {
                log.log(Level.SEVERE, "Failed injecting hostName to work around Android InetAddress DNS bug: " + inetAddress, (Throwable) e2);
                return false;
            }
        }
        return zIsUsableAddress;
    }

    @Override // org.fourthline.cling.transport.impl.NetworkAddressFactoryImpl
    public boolean requiresNetworkInterface() {
        return false;
    }
}
