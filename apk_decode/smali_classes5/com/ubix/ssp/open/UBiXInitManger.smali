.class public Lcom/ubix/ssp/open/UBiXInitManger;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ubix/ssp/open/UBiXInitManger$a;
    }
.end annotation


# static fields
.field private static a:Lcom/ubix/ssp/open/manager/InitManager;

.field public static b:Lcom/ubix/ssp/open/UBiXInitManger$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/ubix/ssp/open/UBiXInitManger$a;->b:Lcom/ubix/ssp/open/UBiXInitManger$a;

    sput-object v0, Lcom/ubix/ssp/open/UBiXInitManger;->b:Lcom/ubix/ssp/open/UBiXInitManger$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/ubix/ssp/open/manager/InitManager;
    .locals 2

    sget-object v0, Lcom/ubix/ssp/open/UBiXInitManger;->a:Lcom/ubix/ssp/open/manager/InitManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/ubix/ssp/open/UBiXInitManger;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/ubix/ssp/open/UBiXInitManger;->a:Lcom/ubix/ssp/open/manager/InitManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/ubix/ssp/ad/e/u/a;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/ubix/ssp/ad/e/u/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/ubix/ssp/open/UBiXInitManger;->a:Lcom/ubix/ssp/open/manager/InitManager;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    sget-object p0, Lcom/ubix/ssp/open/UBiXInitManger;->a:Lcom/ubix/ssp/open/manager/InitManager;

    return-object p0
.end method


# virtual methods
.method public getSdkVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "2.10.2.11"

    return-object v0
.end method
