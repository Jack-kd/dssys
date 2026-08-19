.class public Lcom/meishu/sdk/core/utils/PackageBean$SplashBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meishu/sdk/core/utils/PackageBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SplashBean"
.end annotation


# instance fields
.field private v:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getV()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/utils/PackageBean$SplashBean;->v:I

    .line 2
    .line 3
    return v0
.end method

.method public setV(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/core/utils/PackageBean$SplashBean;->v:I

    .line 2
    .line 3
    return-void
.end method
