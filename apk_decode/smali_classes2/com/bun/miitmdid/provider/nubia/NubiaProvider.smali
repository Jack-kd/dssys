.class public Lcom/bun/miitmdid/provider/nubia/NubiaProvider;
.super Lcom/bun/miitmdid/provider/BaseProvider;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SDK call Nubia: "


# instance fields
.field private context:Landroid/content/Context;

.field private packagename:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/bun/miitmdid/provider/BaseProvider;-><init>()V

    iput-object p1, p0, Lcom/bun/miitmdid/provider/nubia/NubiaProvider;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bun/miitmdid/provider/nubia/NubiaProvider;->packagename:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public doStart()V
    .locals 3

    const/16 v0, 0x50

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-wide v1, 0x176274a9768L

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {p0, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/nis/sdkwrapper/Utils;->rL([Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public isSupported()Z
    .locals 3

    const/16 v0, 0x51

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-wide v1, 0x176274a9769L

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {p0, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/nis/sdkwrapper/Utils;->rL([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
