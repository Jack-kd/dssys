.class public Lcom/meishu/sdk/core/view/TouchPoint;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final downTime:J

.field public final downX:F

.field public final downY:F

.field public final upTime:J

.field public final upX:F

.field public final upY:F


# direct methods
.method public constructor <init>(FFJFFJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/meishu/sdk/core/view/TouchPoint;->downX:F

    .line 5
    .line 6
    iput p2, p0, Lcom/meishu/sdk/core/view/TouchPoint;->downY:F

    .line 7
    .line 8
    iput-wide p3, p0, Lcom/meishu/sdk/core/view/TouchPoint;->downTime:J

    .line 9
    .line 10
    iput p5, p0, Lcom/meishu/sdk/core/view/TouchPoint;->upX:F

    .line 11
    .line 12
    iput p6, p0, Lcom/meishu/sdk/core/view/TouchPoint;->upY:F

    .line 13
    .line 14
    iput-wide p7, p0, Lcom/meishu/sdk/core/view/TouchPoint;->upTime:J

    .line 15
    .line 16
    return-void
.end method
