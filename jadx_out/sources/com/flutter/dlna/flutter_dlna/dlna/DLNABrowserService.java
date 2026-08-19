package com.flutter.dlna.flutter_dlna.dlna;

import org.fourthline.cling.UpnpServiceConfiguration;
import org.fourthline.cling.android.AndroidUpnpServiceConfiguration;
import org.fourthline.cling.android.AndroidUpnpServiceImpl;
import org.fourthline.cling.binding.xml.ServiceDescriptorBinder;
import org.fourthline.cling.transport.spi.NetworkAddressFactory;
import org.fourthline.cling.transport.spi.StreamServer;
import v0.c;

/* loaded from: classes3.dex */
public class DLNABrowserService extends AndroidUpnpServiceImpl {

    public class a extends AndroidUpnpServiceConfiguration {
        public a() {
        }

        @Override // org.fourthline.cling.android.AndroidUpnpServiceConfiguration, org.fourthline.cling.DefaultUpnpServiceConfiguration
        public ServiceDescriptorBinder createServiceDescriptorBinderUDA10() {
            return new c();
        }

        @Override // org.fourthline.cling.android.AndroidUpnpServiceConfiguration, org.fourthline.cling.DefaultUpnpServiceConfiguration, org.fourthline.cling.UpnpServiceConfiguration
        public StreamServer createStreamServer(NetworkAddressFactory networkAddressFactory) {
            return null;
        }
    }

    @Override // org.fourthline.cling.android.AndroidUpnpServiceImpl
    public UpnpServiceConfiguration createConfiguration() {
        return new a();
    }
}
