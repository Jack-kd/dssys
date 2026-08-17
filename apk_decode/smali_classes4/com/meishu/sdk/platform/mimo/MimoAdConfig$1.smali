.class Lcom/meishu/sdk/platform/mimo/MimoAdConfig$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/zeus/mimo/sdk/MimoSdk$InitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/mimo/MimoAdConfig;->onInit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/platform/mimo/MimoAdConfig;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/mimo/MimoAdConfig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/mimo/MimoAdConfig$1;->this$0:Lcom/meishu/sdk/platform/mimo/MimoAdConfig;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public success()V
    .locals 0

    return-void
.end method
