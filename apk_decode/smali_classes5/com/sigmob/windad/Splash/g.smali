.class public final synthetic Lcom/sigmob/windad/Splash/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/sigmob/windad/Splash/WindSplashAD$1;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/sigmob/windad/Splash/WindSplashAD$1;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/windad/Splash/g;->b:Lcom/sigmob/windad/Splash/WindSplashAD$1;

    iput-object p2, p0, Lcom/sigmob/windad/Splash/g;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sigmob/windad/Splash/g;->b:Lcom/sigmob/windad/Splash/WindSplashAD$1;

    iget-object v1, p0, Lcom/sigmob/windad/Splash/g;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sigmob/windad/Splash/WindSplashAD$1;->c(Lcom/sigmob/windad/Splash/WindSplashAD$1;Ljava/lang/String;)V

    return-void
.end method
