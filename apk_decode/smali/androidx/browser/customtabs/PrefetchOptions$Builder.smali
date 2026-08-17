.class public final Landroidx/browser/customtabs/PrefetchOptions$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/browser/customtabs/ExperimentalPrefetch;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/browser/customtabs/PrefetchOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mRequiresAnonymousIpWhenCrossOrigin:Z

.field private mSourceOrigin:Landroid/net/Uri;


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
.method public build()Landroidx/browser/customtabs/PrefetchOptions;
    .locals 3

    .line 1
    new-instance v0, Landroidx/browser/customtabs/PrefetchOptions;

    .line 2
    .line 3
    iget-boolean v1, p0, Landroidx/browser/customtabs/PrefetchOptions$Builder;->mRequiresAnonymousIpWhenCrossOrigin:Z

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/browser/customtabs/PrefetchOptions$Builder;->mSourceOrigin:Landroid/net/Uri;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Landroidx/browser/customtabs/PrefetchOptions;-><init>(ZLandroid/net/Uri;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public setRequiresAnonymousIpWhenCrossOrigin(Z)Landroidx/browser/customtabs/PrefetchOptions$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/browser/customtabs/PrefetchOptions$Builder;->mRequiresAnonymousIpWhenCrossOrigin:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setSourceOrigin(Landroid/net/Uri;)Landroidx/browser/customtabs/PrefetchOptions$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/browser/customtabs/PrefetchOptions$Builder;->mSourceOrigin:Landroid/net/Uri;

    .line 2
    .line 3
    return-object p0
.end method
