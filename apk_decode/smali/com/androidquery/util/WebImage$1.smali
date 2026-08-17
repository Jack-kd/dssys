.class Lcom/androidquery/util/WebImage$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/webkit/WebView$PictureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androidquery/util/WebImage;->delaySetup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androidquery/util/WebImage;


# direct methods
.method public constructor <init>(Lcom/androidquery/util/WebImage;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/androidquery/util/WebImage$1;->this$0:Lcom/androidquery/util/WebImage;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onNewPicture(Landroid/webkit/WebView;Landroid/graphics/Picture;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/androidquery/util/WebImage$1;->this$0:Lcom/androidquery/util/WebImage;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/androidquery/util/WebImage;->access$000(Lcom/androidquery/util/WebImage;)Landroid/webkit/WebView;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 p2, 0x0

    .line 8
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setPictureListener(Landroid/webkit/WebView$PictureListener;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/androidquery/util/WebImage$1;->this$0:Lcom/androidquery/util/WebImage;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/androidquery/util/WebImage;->access$100(Lcom/androidquery/util/WebImage;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
