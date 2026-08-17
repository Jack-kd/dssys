.class public Lcom/meishu/sdk/core/domain/SdkAdInfo$GeneralExt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meishu/sdk/core/domain/SdkAdInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GeneralExt"
.end annotation


# instance fields
.field private app_key:Ljava/lang/String;


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
.method public getApp_key()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo$GeneralExt;->app_key:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setApp_key(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo$GeneralExt;->app_key:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
