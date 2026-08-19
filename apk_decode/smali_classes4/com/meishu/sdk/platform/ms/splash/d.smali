.class public Lcom/meishu/sdk/platform/ms/splash/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FFFJ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/meishu/sdk/platform/ms/splash/d;->a:F

    .line 4
    iput p2, p0, Lcom/meishu/sdk/platform/ms/splash/d;->b:F

    .line 5
    iput p3, p0, Lcom/meishu/sdk/platform/ms/splash/d;->c:F

    .line 6
    iput-wide p4, p0, Lcom/meishu/sdk/platform/ms/splash/d;->d:J

    return-void
.end method
