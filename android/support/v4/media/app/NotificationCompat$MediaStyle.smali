.class public Landroid/support/v4/media/app/NotificationCompat$MediaStyle;
.super Landroid/support/v4/app/NotificationCompat$Style;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaStyle"
.end annotation


# static fields
.field private static final MAX_MEDIA_BUTTONS:I = 0x5

.field private static final MAX_MEDIA_BUTTONS_IN_COMPACT:I = 0x3


# instance fields
.field mActionsToShowInCompact:[I

.field mCancelButtonIntent:Landroid/app/PendingIntent;

.field mShowCancelButton:Z

.field mToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 135
    invoke-direct {p0}, Landroid/support/v4/app/NotificationCompat$Style;-><init>()V

    const/4 v0, 0x0

    .line 130
    iput-object v0, p0, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->mActionsToShowInCompact:[I

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/NotificationCompat$Builder;)V
    .registers 3

    .line 138
    invoke-direct {p0}, Landroid/support/v4/app/NotificationCompat$Style;-><init>()V

    const/4 v0, 0x0

    .line 130
    iput-object v0, p0, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->mActionsToShowInCompact:[I

    .line 139
    invoke-virtual {p0, p1}, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->setBuilder(Landroid/support/v4/app/NotificationCompat$Builder;)V

    return-void
.end method

.method private generateMediaActionButton(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/widget/RemoteViews;
    .registers 6

    .line 280
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Action;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 281
    :goto_9
    new-instance v1, Landroid/widget/RemoteViews;

    iget-object v2, p0, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v2, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sget v3, Landroid/support/mediacompat/R$layout;->notification_media_action:I

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 283
    sget v2, Landroid/support/mediacompat/R$id;->action0:I

    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Action;->getIcon()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    if-nez v0, :cond_2c

    .line 285
    sget v0, Landroid/support/mediacompat/R$id;->action0:I

    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Action;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 287
    :cond_2c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xf

    if-lt v0, v2, :cond_3b

    .line 288
    sget v0, Landroid/support/mediacompat/R$id;->action0:I

    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Action;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    :cond_3b
    return-object v1
.end method

.method public static getMediaSession(Landroid/app/Notification;)Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .registers 3

    .line 102
    invoke-static {p0}, Landroid/support/v4/app/NotificationCompat;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_38

    .line 104
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_19

    const-string v0, "android.mediaSession"

    .line 105
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    if-eqz p0, :cond_38

    .line 108
    invoke-static {p0}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->fromToken(Ljava/lang/Object;)Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object p0

    return-object p0

    :cond_19
    const-string v0, "android.mediaSession"

    .line 111
    invoke-static {p0, v0}, Landroid/support/v4/app/BundleCompat;->getBinder(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    if-eqz p0, :cond_38

    .line 114
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 115
    invoke-virtual {v0, p0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 p0, 0x0

    .line 116
    invoke-virtual {v0, p0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 117
    sget-object p0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 118
    invoke-interface {p0, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 119
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :cond_38
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public apply(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;)V
    .registers 4
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 210
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_17

    .line 211
    invoke-interface {p1}, Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object p1

    new-instance v0, Landroid/app/Notification$MediaStyle;

    invoke-direct {v0}, Landroid/app/Notification$MediaStyle;-><init>()V

    .line 212
    invoke-virtual {p0, v0}, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->fillInMediaStyle(Landroid/app/Notification$MediaStyle;)Landroid/app/Notification$MediaStyle;

    move-result-object v0

    .line 211
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    goto :goto_23

    .line 213
    :cond_17
    iget-boolean v0, p0, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->mShowCancelButton:Z

    if-eqz v0, :cond_23

    .line 214
    invoke-interface {p1}, Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    :cond_23
    :goto_23
    return-void
.end method

.method fillInMediaStyle(Landroid/app/Notification$MediaStyle;)Landroid/app/Notification$MediaStyle;
    .registers 3
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .line 220
    iget-object v0, p0, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->mActionsToShowInCompact:[I

    if-eqz v0, :cond_9

    .line 221
    iget-object v0, p0, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->mActionsToShowInCompact:[I

    invoke-virtual {p1, v0}, Landroid/app/Notification$MediaStyle;->setShowActionsInCompactView([I)Landroid/app/Notification$MediaStyle;

    .line 223
    :cond_9
    iget-object v0, p0, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->mToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    if-eqz v0, :cond_18

    .line 224
    iget-object v0, p0, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->mToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->getToken()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession$Token;

    invoke-virtual {p1, v0}, Landroid/app/Notification$MediaStyle;->setMediaSession(Landroid/media/session/MediaSession$Token;)Landroid/app/Notification$MediaStyle;

    :cond_18
    return-object p1
.end method

.method generateBigContentView()Landroid/widget/RemoteViews;
    .registers 7

    .line 311
    iget-object v0, p0, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 313
    invoke-virtual {p0, v0}, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->getBigContentViewLayoutResource(I)I

    move-result v1

    const/4 v2, 0x0

    .line 312
    invoke-virtual {p0, v2, v1, v2}, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->applyStandardTemplate(ZIZ)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 315
    sget v3, Landroid/support/mediacompat/R$id;->media_actions:I

    invoke-virtual {v1, v3}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    if-lez v0, :cond_36

    const/4 v3, 0x0

    :goto_1e
    if-ge v3, v0, :cond_36

    .line 318
    iget-object v4, p0, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v4, v4, Landroid/support/v4/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/NotificationCompat$Action;

    invoke-direct {p0, v4}, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->generateMediaActionButton(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/widget/RemoteViews;

    move-result-object v4

    .line 319
    sget v5, Landroid/support/mediacompat/R$id;->media_actions:I

    invoke-virtual {v1, v5, v4}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 322
    :cond_36
    iget-boolean v0, p0, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->mShowCancelButton:Z

    if-eqz v0, :cond_5c

    .line 323
    sget v0, Landroid/support/mediacompat/R$id;->cancel_action:I

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 324
    sget v0, Landroid/support/mediacompat/R$id;->cancel_action:I

    const-string v2, "setAlpha"

    iget-object v3, p0, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v3, v3, Landroid/support/v4/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    .line 325
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Landroid/support/mediacompat/R$integer;->cancel_button_image_alpha:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 324
    invoke-virtual {v1, v0, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 326
    sget v0, Landroid/support/mediacompat/R$id;->cancel_action:I

    iget-object v2, p0, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->mCancelButtonIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_63

    .line 328
    :cond_5c
    sget v0, Landroid/support/mediacompat/R$id;->cancel_action:I

    const/16 v2, 0x8

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_63
    return-object v1
.end method

.method generateContentView()Landroid/widget/RemoteViews;
    .registers 9

    .line 244
    invoke-virtual {p0}, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->getContentViewLayoutResource()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 243
    invoke-virtual {p0, v2, v0, v1}, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->applyStandardTemplate(ZIZ)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 246
    iget-object v3, p0, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v3, v3, Landroid/support/v4/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 247
    iget-object v4, p0, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->mActionsToShowInCompact:[I

    if-nez v4, :cond_18

    const/4 v4, 0x0

    goto :goto_20

    :cond_18
    iget-object v4, p0, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->mActionsToShowInCompact:[I

    array-length v4, v4

    const/4 v5, 0x3

    .line 249
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 250
    :goto_20
    sget v5, Landroid/support/mediacompat/R$id;->media_actions:I

    invoke-virtual {v0, v5}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    if-lez v4, :cond_62

    const/4 v5, 0x0

    :goto_28
    if-ge v5, v4, :cond_62

    if-lt v5, v3, :cond_48

    .line 254
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v4, "setShowActionsInCompactView: action %d out of bounds (max %d)"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    .line 256
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v2

    sub-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v1

    .line 254
    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 259
    :cond_48
    iget-object v6, p0, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v6, v6, Landroid/support/v4/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    iget-object v7, p0, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->mActionsToShowInCompact:[I

    aget v7, v7, v5

    .line 260
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v4/app/NotificationCompat$Action;

    .line 261
    invoke-direct {p0, v6}, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->generateMediaActionButton(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/widget/RemoteViews;

    move-result-object v6

    .line 262
    sget v7, Landroid/support/mediacompat/R$id;->media_actions:I

    invoke-virtual {v0, v7, v6}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_28

    .line 265
    :cond_62
    iget-boolean v1, p0, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->mShowCancelButton:Z

    const/16 v3, 0x8

    if-eqz v1, :cond_8f

    .line 266
    sget v1, Landroid/support/mediacompat/R$id;->end_padder:I

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 267
    sget v1, Landroid/support/mediacompat/R$id;->cancel_action:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 268
    sget v1, Landroid/support/mediacompat/R$id;->cancel_action:I

    iget-object v2, p0, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->mCancelButtonIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 269
    sget v1, Landroid/support/mediacompat/R$id;->cancel_action:I

    const-string v2, "setAlpha"

    iget-object v3, p0, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v3, v3, Landroid/support/v4/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    .line 270
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Landroid/support/mediacompat/R$integer;->cancel_button_image_alpha:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 269
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_99

    .line 272
    :cond_8f
    sget v1, Landroid/support/mediacompat/R$id;->end_padder:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 273
    sget v1, Landroid/support/mediacompat/R$id;->cancel_action:I

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_99
    return-object v0
.end method

.method getBigContentViewLayoutResource(I)I
    .registers 3

    const/4 v0, 0x3

    if-gt p1, v0, :cond_6

    .line 334
    sget p1, Landroid/support/mediacompat/R$layout;->notification_template_big_media_narrow:I

    goto :goto_8

    :cond_6
    sget p1, Landroid/support/mediacompat/R$layout;->notification_template_big_media:I

    :goto_8
    return p1
.end method

.method getContentViewLayoutResource()I
    .registers 2

    .line 294
    sget v0, Landroid/support/mediacompat/R$layout;->notification_template_media:I

    return v0
.end method

.method public makeBigContentView(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;
    .registers 3
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 303
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_8

    const/4 p1, 0x0

    return-object p1

    .line 307
    :cond_8
    invoke-virtual {p0}, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->generateBigContentView()Landroid/widget/RemoteViews;

    move-result-object p1

    return-object p1
.end method

.method public makeContentView(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;
    .registers 3
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 235
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_8

    const/4 p1, 0x0

    return-object p1

    .line 239
    :cond_8
    invoke-virtual {p0}, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->generateContentView()Landroid/widget/RemoteViews;

    move-result-object p1

    return-object p1
.end method

.method public setCancelButtonIntent(Landroid/app/PendingIntent;)Landroid/support/v4/media/app/NotificationCompat$MediaStyle;
    .registers 2

    .line 200
    iput-object p1, p0, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->mCancelButtonIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public setMediaSession(Landroid/support/v4/media/session/MediaSessionCompat$Token;)Landroid/support/v4/media/app/NotificationCompat$MediaStyle;
    .registers 2

    .line 158
    iput-object p1, p0, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->mToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    return-object p0
.end method

.method public varargs setShowActionsInCompactView([I)Landroid/support/v4/media/app/NotificationCompat$MediaStyle;
    .registers 2

    .line 149
    iput-object p1, p0, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->mActionsToShowInCompact:[I

    return-object p0
.end method

.method public setShowCancelButton(Z)Landroid/support/v4/media/app/NotificationCompat$MediaStyle;
    .registers 4

    .line 187
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_8

    .line 188
    iput-boolean p1, p0, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->mShowCancelButton:Z

    :cond_8
    return-object p0
.end method
