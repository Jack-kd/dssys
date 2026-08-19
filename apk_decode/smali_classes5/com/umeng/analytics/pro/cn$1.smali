.class Lcom/umeng/analytics/pro/cn$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/umeng/analytics/pro/cg;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/analytics/pro/cn;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/umeng/analytics/pro/cn;


# direct methods
.method public constructor <init>(Lcom/umeng/analytics/pro/cn;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/umeng/analytics/pro/cn$1;->b:Lcom/umeng/analytics/pro/cn;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/umeng/analytics/pro/cn$1;->a:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)V
    .locals 8

    .line 1
    const-string v0, "MobclickRT"

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "[ncc]: onConfigReady:"

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v0, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v2, p0, Lcom/umeng/analytics/pro/cn$1;->a:Landroid/content/Context;

    .line 26
    .line 27
    invoke-static {}, Lcom/umeng/analytics/pro/cn;->a()Lcom/umeng/analytics/pro/cn;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    const-wide/16 v6, 0xbb8

    .line 32
    .line 33
    const/16 v3, 0xc9

    .line 34
    .line 35
    move-object v5, p1

    .line 36
    invoke-static/range {v2 .. v7}, Lcom/umeng/analytics/pro/cm;->a(Landroid/content/Context;ILcom/umeng/analytics/pro/cm$a;Ljava/lang/Object;J)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_0
    const-string p1, "[ncc]: onConfigReady: empty config!"

    .line 41
    .line 42
    invoke-static {v0, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method
