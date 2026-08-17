.class Lcom/anythink/network/gdt/GDTATNativeAd$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/qq/e/comm/compliance/DownloadConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/gdt/GDTATNativeAd;->registerDownloadConfirmListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/gdt/GDTATNativeAd;


# direct methods
.method public constructor <init>(Lcom/anythink/network/gdt/GDTATNativeAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/anythink/network/gdt/GDTATNativeAd$a;->a:Lcom/anythink/network/gdt/GDTATNativeAd;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onDownloadConfirm(Landroid/app/Activity;ILjava/lang/String;Lcom/qq/e/comm/compliance/DownloadConfirmCallBack;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeAd$a;->a:Lcom/anythink/network/gdt/GDTATNativeAd;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/anythink/network/gdt/GDTATNativeAd;->j:Landroid/view/View;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput-object v2, v0, Lcom/anythink/network/gdt/GDTATNativeAd;->j:Landroid/view/View;

    .line 7
    .line 8
    new-instance v0, Lcom/anythink/network/gdt/GDTDownloadFirmInfo;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/anythink/network/gdt/GDTDownloadFirmInfo;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p3, v0, Lcom/anythink/network/gdt/GDTDownloadFirmInfo;->appInfoUrl:Ljava/lang/String;

    .line 14
    .line 15
    iput p2, v0, Lcom/anythink/network/gdt/GDTDownloadFirmInfo;->scenes:I

    .line 16
    .line 17
    iput-object p4, v0, Lcom/anythink/network/gdt/GDTDownloadFirmInfo;->confirmCallBack:Lcom/qq/e/comm/compliance/DownloadConfirmCallBack;

    .line 18
    .line 19
    iget-object p2, p0, Lcom/anythink/network/gdt/GDTATNativeAd$a;->a:Lcom/anythink/network/gdt/GDTATNativeAd;

    .line 20
    .line 21
    invoke-virtual {p2, p1, v1, v0}, Lcom/anythink/nativead/unitgroup/a;->notifyDownloadConfirm(Landroid/content/Context;Landroid/view/View;Lcom/anythink/core/api/ATNetworkConfirmInfo;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
