.class public final Lcom/czhj/devicehelper/DeviceHelper;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "getSimState"

.field private static final b:Ljava/lang/String; = "getImei"

.field private static final c:Ljava/lang/String; = "getLine1Number"

.field private static d:Ljava/lang/String; = null

.field private static e:Ljava/lang/String; = null

.field private static f:Ljava/lang/String; = null

.field private static g:Ljava/lang/String; = ""

.field private static h:J = 0x0L

.field private static i:J = 0x0L

.field private static j:Landroid/os/Handler; = null

.field private static k:Landroid/os/Handler; = null

.field private static l:I = 0x0

.field private static m:Z = false

.field private static n:Ljava/lang/String;

.field private static o:Ljava/lang/String;

.field private static p:Ljava/lang/String;

.field private static q:Ljava/lang/Thread;

.field private static r:Ljava/lang/Thread;

.field private static s:Z

.field private static t:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(I)I
    .locals 0

    .line 1
    sput p0, Lcom/czhj/devicehelper/DeviceHelper;->t:I

    return p0
.end method

.method public static synthetic a()Landroid/os/Handler;
    .locals 1

    .line 2
    sget-object v0, Lcom/czhj/devicehelper/DeviceHelper;->j:Landroid/os/Handler;

    return-object v0
.end method

.method public static synthetic a(Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    .line 3
    sput-object p0, Lcom/czhj/devicehelper/DeviceHelper;->j:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 4
    sput-object p0, Lcom/czhj/devicehelper/DeviceHelper;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic a(Z)Z
    .locals 0

    .line 5
    sput-boolean p0, Lcom/czhj/devicehelper/DeviceHelper;->s:Z

    return p0
.end method

.method public static synthetic b()Ljava/lang/Thread;
    .locals 1

    sget-object v0, Lcom/czhj/devicehelper/DeviceHelper;->r:Ljava/lang/Thread;

    return-object v0
.end method

.method public static getIMEI(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission",
            "HardwareIds"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "private :getIMEI"

    invoke-static {v1}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_1

    invoke-static {p0}, LV/h;->a(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_2

    :try_start_1
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p0

    :catchall_0
    :try_start_2
    invoke-static {p0}, Lm/b;->a(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    if-eqz v1, :cond_3

    return-object v1

    :catch_0
    :cond_3
    return-object v0
.end method

.method public static getIMEI(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 2
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "private :getIMEI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_1

    invoke-static {p0, p1}, Lm/a;->a(Landroid/telephony/TelephonyManager;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_2

    :try_start_1
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p0

    :catchall_0
    :try_start_2
    invoke-static {p0, p1}, Lcom/czhj/devicehelper/b;->a(Landroid/telephony/TelephonyManager;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    if-eqz v1, :cond_3

    return-object v1

    :catch_0
    :cond_3
    return-object v0
.end method

.method public static getIMSI(Landroid/content/Context;)Ljava/lang/String;
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission",
            "HardwareIds"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getMacAddress()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public static getOAID(Landroid/content/Context;Lcom/czhj/devicehelper/msaoaId/a$a;)V
    .locals 3

    sget-object v0, Lcom/czhj/devicehelper/DeviceHelper;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/czhj/devicehelper/DeviceHelper;->t:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    if-eqz p1, :cond_2

    const-string p0, ""

    invoke-interface {p1, p0}, Lcom/czhj/devicehelper/msaoaId/a$a;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/czhj/devicehelper/DeviceHelper;->h:J

    sget-object v0, Lcom/czhj/devicehelper/DeviceHelper;->r:Ljava/lang/Thread;

    if-nez v0, :cond_2

    invoke-static {}, Ljava/lang/Thread;->activeCount()I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/czhj/devicehelper/DeviceHelper$1;

    invoke-direct {v1, p0, p1}, Lcom/czhj/devicehelper/DeviceHelper$1;-><init>(Landroid/content/Context;Lcom/czhj/devicehelper/msaoaId/a$a;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, Lcom/czhj/devicehelper/DeviceHelper;->r:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    sget p0, Lcom/czhj/devicehelper/DeviceHelper;->t:I

    const/4 v0, 0x1

    add-int/2addr p0, v0

    sput p0, Lcom/czhj/devicehelper/DeviceHelper;->t:I

    sput-boolean v0, Lcom/czhj/devicehelper/DeviceHelper;->s:Z

    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object p0, Lcom/czhj/devicehelper/DeviceHelper;->j:Landroid/os/Handler;

    new-instance v0, Lcom/czhj/devicehelper/DeviceHelper$2;

    invoke-direct {v0, p1}, Lcom/czhj/devicehelper/DeviceHelper$2;-><init>(Lcom/czhj/devicehelper/msaoaId/a$a;)V

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    if-eqz p1, :cond_2

    sget-object p0, Lcom/czhj/devicehelper/DeviceHelper;->e:Ljava/lang/String;

    invoke-interface {p1, p0}, Lcom/czhj/devicehelper/msaoaId/a$a;->a(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static getVAID()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/czhj/devicehelper/DeviceHelper;->f:Ljava/lang/String;

    return-object v0
.end method

.method public static getWifiName(Landroid/content/Context;)Ljava/lang/String;
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    sget-object p0, Lcom/czhj/devicehelper/DeviceHelper;->n:Ljava/lang/String;

    return-object p0
.end method

.method public static getWifimac(Landroid/content/Context;)Ljava/lang/String;
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    const-string p0, ""

    return-object p0
.end method
