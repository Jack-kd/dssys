.class public Lcom/umeng/commonsdk/statistics/idtracking/e;
.super Lcom/umeng/commonsdk/statistics/idtracking/a;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "idmd5"


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-string v0, "idmd5"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/umeng/commonsdk/statistics/idtracking/a;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/idtracking/e;->b:Landroid/content/Context;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/e;->b:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getDeviceIdUmengMD5(Landroid/content/Context;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
