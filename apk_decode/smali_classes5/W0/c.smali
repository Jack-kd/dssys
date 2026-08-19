.class public final synthetic LW0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/smartdigimkt/a3/a;

.field public final synthetic c:Landroid/webkit/WebView;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/smartdigimkt/a3/a;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LW0/c;->b:Lcom/smartdigimkt/a3/a;

    iput-object p2, p0, LW0/c;->c:Landroid/webkit/WebView;

    iput-object p3, p0, LW0/c;->d:Ljava/lang/String;

    iput-object p4, p0, LW0/c;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, LW0/c;->b:Lcom/smartdigimkt/a3/a;

    iget-object v1, p0, LW0/c;->c:Landroid/webkit/WebView;

    iget-object v2, p0, LW0/c;->d:Ljava/lang/String;

    iget-object v3, p0, LW0/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/smartdigimkt/a3/a;->b(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
