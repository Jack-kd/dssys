package org.fourthline.cling.android;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.NetworkInfo;
import android.net.wifi.WifiManager;
import com.baidu.mobads.sdk.internal.a;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.umeng.analytics.pro.ca;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.eclipse.jetty.util.security.Constraint;
import org.fourthline.cling.UpnpServiceConfiguration;
import org.fourthline.cling.model.ModelUtil;
import org.fourthline.cling.protocol.ProtocolFactory;
import org.fourthline.cling.transport.Router;
import org.fourthline.cling.transport.RouterException;
import org.fourthline.cling.transport.RouterImpl;
import org.fourthline.cling.transport.spi.InitializationException;
import org.seamless.util.Exceptions;

/* loaded from: classes5.dex */
public class AndroidRouter extends RouterImpl {
    private static final Logger log = Logger.getLogger(Router.class.getName());
    protected BroadcastReceiver broadcastReceiver;
    private final Context context;
    protected WifiManager.MulticastLock multicastLock;
    protected NetworkInfo networkInfo;
    protected WifiManager.WifiLock wifiLock;
    private final WifiManager wifiManager;

    public class ConnectivityBroadcastReceiver extends BroadcastReceiver {
        public ConnectivityBroadcastReceiver() {
        }

        public void displayIntentInfo(Intent intent) {
            boolean booleanExtra = intent.getBooleanExtra("noConnectivity", false);
            String stringExtra = intent.getStringExtra(MediationConstant.KEY_REASON);
            boolean booleanExtra2 = intent.getBooleanExtra("isFailover", false);
            Object obj = (NetworkInfo) intent.getParcelableExtra("networkInfo");
            Object obj2 = (NetworkInfo) intent.getParcelableExtra("otherNetwork");
            AndroidRouter.log.info("Connectivity change detected...");
            AndroidRouter.log.info("EXTRA_NO_CONNECTIVITY: " + booleanExtra);
            AndroidRouter.log.info("EXTRA_REASON: " + stringExtra);
            AndroidRouter.log.info("EXTRA_IS_FAILOVER: " + booleanExtra2);
            Logger logger = AndroidRouter.log;
            StringBuilder sb = new StringBuilder();
            sb.append("EXTRA_NETWORK_INFO: ");
            if (obj == null) {
                obj = a.f10877a;
            }
            sb.append(obj);
            logger.info(sb.toString());
            Logger logger2 = AndroidRouter.log;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("EXTRA_OTHER_NETWORK_INFO: ");
            if (obj2 == null) {
                obj2 = a.f10877a;
            }
            sb2.append(obj2);
            logger2.info(sb2.toString());
            AndroidRouter.log.info("EXTRA_EXTRA_INFO: " + intent.getStringExtra(MediationConstant.KEY_EXTRA_INFO));
        }

        public boolean isSameNetworkType(NetworkInfo networkInfo, NetworkInfo networkInfo2) {
            if (networkInfo == null && networkInfo2 == null) {
                return true;
            }
            return (networkInfo == null || networkInfo2 == null || networkInfo.getType() != networkInfo2.getType()) ? false : true;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) throws InterruptedException, IllegalArgumentException {
            if (intent.getAction().equals("android.net.conn.CONNECTIVITY_CHANGE")) {
                displayIntentInfo(intent);
                NetworkInfo connectedNetworkInfo = NetworkUtils.getConnectedNetworkInfo(context);
                if (AndroidRouter.this.networkInfo != null && connectedNetworkInfo == null) {
                    for (int i2 = 1; i2 <= 3; i2++) {
                        try {
                            Thread.sleep(1000L);
                            AndroidRouter.log.warning(String.format("%s => NONE network transition, waiting for new network... retry #%d", AndroidRouter.this.networkInfo.getTypeName(), Integer.valueOf(i2)));
                            connectedNetworkInfo = NetworkUtils.getConnectedNetworkInfo(context);
                            if (connectedNetworkInfo != null) {
                                break;
                            }
                        } catch (InterruptedException unused) {
                            return;
                        }
                    }
                }
                if (isSameNetworkType(AndroidRouter.this.networkInfo, connectedNetworkInfo)) {
                    AndroidRouter.log.info("No actual network change... ignoring event!");
                    return;
                }
                try {
                    AndroidRouter androidRouter = AndroidRouter.this;
                    androidRouter.onNetworkTypeChange(androidRouter.networkInfo, connectedNetworkInfo);
                } catch (RouterException e2) {
                    AndroidRouter.this.handleRouterExceptionOnNetworkTypeChange(e2);
                }
            }
        }
    }

    public AndroidRouter(UpnpServiceConfiguration upnpServiceConfiguration, ProtocolFactory protocolFactory, Context context) throws InitializationException {
        super(upnpServiceConfiguration, protocolFactory);
        this.context = context;
        this.wifiManager = (WifiManager) context.getSystemService("wifi");
        this.networkInfo = NetworkUtils.getConnectedNetworkInfo(context);
        if (ModelUtil.ANDROID_EMULATOR) {
            return;
        }
        BroadcastReceiver broadcastReceiverCreateConnectivityBroadcastReceiver = createConnectivityBroadcastReceiver();
        this.broadcastReceiver = broadcastReceiverCreateConnectivityBroadcastReceiver;
        context.registerReceiver(broadcastReceiverCreateConnectivityBroadcastReceiver, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
    }

    public BroadcastReceiver createConnectivityBroadcastReceiver() {
        return new ConnectivityBroadcastReceiver();
    }

    @Override // org.fourthline.cling.transport.RouterImpl, org.fourthline.cling.transport.Router
    public boolean disable() throws RouterException {
        lock(this.writeLock);
        try {
            if (isWifi()) {
                setWiFiMulticastLock(false);
                setWifiLock(false);
            }
            boolean zDisable = super.disable();
            unlock(this.writeLock);
            return zDisable;
        } catch (Throwable th) {
            unlock(this.writeLock);
            throw th;
        }
    }

    @Override // org.fourthline.cling.transport.RouterImpl, org.fourthline.cling.transport.Router
    public boolean enable() throws RouterException {
        lock(this.writeLock);
        try {
            boolean zEnable = super.enable();
            if (zEnable && isWifi()) {
                setWiFiMulticastLock(true);
                setWifiLock(true);
            }
            return zEnable;
        } finally {
            unlock(this.writeLock);
        }
    }

    public boolean enableWiFi() {
        log.info("Enabling WiFi...");
        try {
            return this.wifiManager.setWifiEnabled(true);
        } catch (Throwable th) {
            log.log(Level.WARNING, "SetWifiEnabled failed", th);
            return false;
        }
    }

    @Override // org.fourthline.cling.transport.RouterImpl
    public int getLockTimeoutMillis() {
        return ca.f49002b;
    }

    public NetworkInfo getNetworkInfo() {
        return this.networkInfo;
    }

    public void handleRouterExceptionOnNetworkTypeChange(RouterException routerException) throws IllegalArgumentException {
        Throwable thUnwrap = Exceptions.unwrap(routerException);
        if (thUnwrap instanceof InterruptedException) {
            log.log(Level.INFO, "Router was interrupted: " + routerException, thUnwrap);
            return;
        }
        log.log(Level.WARNING, "Router error on network change: " + routerException, (Throwable) routerException);
    }

    public boolean isEthernet() {
        return NetworkUtils.isEthernet(this.networkInfo);
    }

    public boolean isMobile() {
        return NetworkUtils.isMobile(this.networkInfo);
    }

    public boolean isWifi() {
        return NetworkUtils.isWifi(this.networkInfo);
    }

    public void onNetworkTypeChange(NetworkInfo networkInfo, NetworkInfo networkInfo2) throws RouterException {
        Logger logger = log;
        String typeName = networkInfo == null ? "" : networkInfo.getTypeName();
        String typeName2 = Constraint.NONE;
        logger.info(String.format("Network type changed %s => %s", typeName, networkInfo2 == null ? Constraint.NONE : networkInfo2.getTypeName()));
        if (disable()) {
            logger.info(String.format("Disabled router on network type change (old network: %s)", networkInfo == null ? Constraint.NONE : networkInfo.getTypeName()));
        }
        this.networkInfo = networkInfo2;
        if (enable()) {
            if (networkInfo2 != null) {
                typeName2 = networkInfo2.getTypeName();
            }
            logger.info(String.format("Enabled router on network type change (new network: %s)", typeName2));
        }
    }

    public void setWiFiMulticastLock(boolean z2) {
        if (this.multicastLock == null) {
            this.multicastLock = this.wifiManager.createMulticastLock(getClass().getSimpleName());
        }
        if (z2) {
            if (this.multicastLock.isHeld()) {
                log.warning("WiFi multicast lock already acquired");
                return;
            } else {
                log.info("WiFi multicast lock acquired");
                this.multicastLock.acquire();
                return;
            }
        }
        if (!this.multicastLock.isHeld()) {
            log.warning("WiFi multicast lock already released");
        } else {
            log.info("WiFi multicast lock released");
            this.multicastLock.release();
        }
    }

    public void setWifiLock(boolean z2) {
        if (this.wifiLock == null) {
            this.wifiLock = this.wifiManager.createWifiLock(3, getClass().getSimpleName());
        }
        if (z2) {
            if (this.wifiLock.isHeld()) {
                log.warning("WiFi lock already acquired");
                return;
            } else {
                log.info("WiFi lock acquired");
                this.wifiLock.acquire();
                return;
            }
        }
        if (!this.wifiLock.isHeld()) {
            log.warning("WiFi lock already released");
        } else {
            log.info("WiFi lock released");
            this.wifiLock.release();
        }
    }

    @Override // org.fourthline.cling.transport.RouterImpl, org.fourthline.cling.transport.Router
    public void shutdown() throws RouterException {
        super.shutdown();
        unregisterBroadcastReceiver();
    }

    public void unregisterBroadcastReceiver() {
        BroadcastReceiver broadcastReceiver = this.broadcastReceiver;
        if (broadcastReceiver != null) {
            this.context.unregisterReceiver(broadcastReceiver);
            this.broadcastReceiver = null;
        }
    }
}
