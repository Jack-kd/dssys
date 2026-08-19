.class public final Lcom/fl/saas/adx/oaid/impl/OAIDFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static ioaid:Lcom/fl/saas/adx/oaid/IOAID;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/fl/saas/adx/oaid/IOAID;
    .locals 1

    if-eqz p0, :cond_0

    instance-of v0, p0, Landroid/app/Application;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    :cond_0
    sget-object v0, Lcom/fl/saas/adx/oaid/impl/OAIDFactory;->ioaid:Lcom/fl/saas/adx/oaid/IOAID;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/fl/saas/adx/oaid/impl/OAIDFactory;->createManufacturerImpl(Landroid/content/Context;)Lcom/fl/saas/adx/oaid/IOAID;

    move-result-object v0

    sput-object v0, Lcom/fl/saas/adx/oaid/impl/OAIDFactory;->ioaid:Lcom/fl/saas/adx/oaid/IOAID;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/fl/saas/adx/oaid/IOAID;->supported()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Manufacturer interface has been found: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/fl/saas/adx/oaid/impl/OAIDFactory;->ioaid:Lcom/fl/saas/adx/oaid/IOAID;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/fl/saas/adx/oaid/OAIDLog;->print(Ljava/lang/Object;)V

    sget-object p0, Lcom/fl/saas/adx/oaid/impl/OAIDFactory;->ioaid:Lcom/fl/saas/adx/oaid/IOAID;

    return-object p0

    :cond_2
    invoke-static {p0}, Lcom/fl/saas/adx/oaid/impl/OAIDFactory;->createUniversalImpl(Landroid/content/Context;)Lcom/fl/saas/adx/oaid/IOAID;

    move-result-object p0

    sput-object p0, Lcom/fl/saas/adx/oaid/impl/OAIDFactory;->ioaid:Lcom/fl/saas/adx/oaid/IOAID;

    return-object p0
.end method

.method private static createManufacturerImpl(Landroid/content/Context;)Lcom/fl/saas/adx/oaid/IOAID;
    .locals 2

    invoke-static {}, Lcom/fl/saas/adx/oaid/OAIDRom;->isLenovo()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-static {}, Lcom/fl/saas/adx/oaid/OAIDRom;->isMotolora()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-static {}, Lcom/fl/saas/adx/oaid/OAIDRom;->isMeizu()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/fl/saas/adx/oaid/impl/MeizuImpl;

    invoke-direct {v0, p0}, Lcom/fl/saas/adx/oaid/impl/MeizuImpl;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_1
    invoke-static {}, Lcom/fl/saas/adx/oaid/OAIDRom;->isNubia()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/fl/saas/adx/oaid/impl/NubiaImpl;

    invoke-direct {v0, p0}, Lcom/fl/saas/adx/oaid/impl/NubiaImpl;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_2
    invoke-static {}, Lcom/fl/saas/adx/oaid/OAIDRom;->isXiaomi()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {}, Lcom/fl/saas/adx/oaid/OAIDRom;->isMiui()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {}, Lcom/fl/saas/adx/oaid/OAIDRom;->isBlackShark()Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_2

    :cond_3
    invoke-static {}, Lcom/fl/saas/adx/oaid/OAIDRom;->isSamsung()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/fl/saas/adx/oaid/impl/SamsungImpl;

    invoke-direct {v0, p0}, Lcom/fl/saas/adx/oaid/impl/SamsungImpl;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_4
    invoke-static {}, Lcom/fl/saas/adx/oaid/OAIDRom;->isVivo()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/fl/saas/adx/oaid/impl/VivoImpl;

    invoke-direct {v0, p0}, Lcom/fl/saas/adx/oaid/impl/VivoImpl;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_5
    invoke-static {}, Lcom/fl/saas/adx/oaid/OAIDRom;->isASUS()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lcom/fl/saas/adx/oaid/impl/AsusImpl;

    invoke-direct {v0, p0}, Lcom/fl/saas/adx/oaid/impl/AsusImpl;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_6
    invoke-static {}, Lcom/fl/saas/adx/oaid/OAIDRom;->isHuawei()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {}, Lcom/fl/saas/adx/oaid/OAIDRom;->isEmui()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_1

    :cond_7
    invoke-static {}, Lcom/fl/saas/adx/oaid/OAIDRom;->isOppo()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {}, Lcom/fl/saas/adx/oaid/OAIDRom;->isOnePlus()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_0

    :cond_8
    invoke-static {p0}, Lcom/fl/saas/adx/oaid/OAIDRom;->isCoolpad(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Lcom/fl/saas/adx/oaid/impl/CoolpadImpl;

    invoke-direct {v0, p0}, Lcom/fl/saas/adx/oaid/impl/CoolpadImpl;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_9
    invoke-static {}, Lcom/fl/saas/adx/oaid/OAIDRom;->isCoosea()Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Lcom/fl/saas/adx/oaid/impl/CooseaImpl;

    invoke-direct {v0, p0}, Lcom/fl/saas/adx/oaid/impl/CooseaImpl;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_a
    invoke-static {}, Lcom/fl/saas/adx/oaid/OAIDRom;->isFreeme()Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Lcom/fl/saas/adx/oaid/impl/FreemeImpl;

    invoke-direct {v0, p0}, Lcom/fl/saas/adx/oaid/impl/FreemeImpl;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_b
    const/4 p0, 0x0

    return-object p0

    :cond_c
    :goto_0
    new-instance v0, Lcom/fl/saas/adx/oaid/impl/OppoImpl;

    invoke-direct {v0, p0}, Lcom/fl/saas/adx/oaid/impl/OppoImpl;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/fl/saas/adx/oaid/impl/OppoImpl;->supported()Z

    move-result v1

    if-eqz v1, :cond_d

    return-object v0

    :cond_d
    new-instance v0, Lcom/fl/saas/adx/oaid/impl/OppoExtImpl;

    invoke-direct {v0, p0}, Lcom/fl/saas/adx/oaid/impl/OppoExtImpl;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_e
    :goto_1
    new-instance v0, Lcom/fl/saas/adx/oaid/impl/HuaweiImpl;

    invoke-direct {v0, p0}, Lcom/fl/saas/adx/oaid/impl/HuaweiImpl;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_f
    :goto_2
    new-instance v0, Lcom/fl/saas/adx/oaid/impl/XiaomiImpl;

    invoke-direct {v0, p0}, Lcom/fl/saas/adx/oaid/impl/XiaomiImpl;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_10
    :goto_3
    new-instance v0, Lcom/fl/saas/adx/oaid/impl/LenovoImpl;

    invoke-direct {v0, p0}, Lcom/fl/saas/adx/oaid/impl/LenovoImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private static createUniversalImpl(Landroid/content/Context;)Lcom/fl/saas/adx/oaid/IOAID;
    .locals 2

    new-instance v0, Lcom/fl/saas/adx/oaid/impl/MsaImpl;

    invoke-direct {v0, p0}, Lcom/fl/saas/adx/oaid/impl/MsaImpl;-><init>(Landroid/content/Context;)V

    invoke-interface {v0}, Lcom/fl/saas/adx/oaid/IOAID;->supported()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mobile Security Alliance has been found: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/fl/saas/adx/oaid/impl/MsaImpl;

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/fl/saas/adx/oaid/OAIDLog;->print(Ljava/lang/Object;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/fl/saas/adx/oaid/impl/GmsImpl;

    invoke-direct {v0, p0}, Lcom/fl/saas/adx/oaid/impl/GmsImpl;-><init>(Landroid/content/Context;)V

    invoke-interface {v0}, Lcom/fl/saas/adx/oaid/IOAID;->supported()Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Google Play Service has been found: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/fl/saas/adx/oaid/impl/GmsImpl;

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/fl/saas/adx/oaid/impl/DefaultImpl;

    invoke-direct {p0}, Lcom/fl/saas/adx/oaid/impl/DefaultImpl;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OAID/AAID was not supported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/fl/saas/adx/oaid/impl/DefaultImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fl/saas/adx/oaid/OAIDLog;->print(Ljava/lang/Object;)V

    return-object p0
.end method
