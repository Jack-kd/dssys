.class public abstract Lcom/anythink/network/baidu/impression/BDImpressionController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/anythink/network/baidu/impression/BDImpressionInterface;


# static fields
.field private static final e:I = 0x0

.field private static final f:I = 0x32


# instance fields
.field private a:Z

.field private b:I

.field private c:I

.field private d:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/anythink/network/baidu/impression/BDImpressionController;->b:I

    .line 6
    .line 7
    const/16 v0, 0x32

    .line 8
    .line 9
    iput v0, p0, Lcom/anythink/network/baidu/impression/BDImpressionController;->c:I

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/anythink/network/baidu/impression/BDImpressionController;->d:Ljava/lang/Integer;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final getImpressionMinPercentageViewed()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/anythink/network/baidu/impression/BDImpressionController;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public final getImpressionMinTimeViewed()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/anythink/network/baidu/impression/BDImpressionController;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public final getImpressionMinVisiblePx()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/baidu/impression/BDImpressionController;->d:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final isImpressionRecorded()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/anythink/network/baidu/impression/BDImpressionController;->a:Z

    .line 2
    .line 3
    return v0
.end method

.method public abstract recordImpression(Landroid/view/View;)V
.end method

.method public final setImpressionRecorded()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/anythink/network/baidu/impression/BDImpressionController;->a:Z

    .line 3
    .line 4
    return-void
.end method
