.class public Lcom/umeng/commonsdk/internal/utils/ApplicationLayerUtilAgent;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static wifiChange(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/umeng/commonsdk/config/FieldManager;->b()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, Lcom/umeng/commonsdk/internal/utils/a;->b(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
