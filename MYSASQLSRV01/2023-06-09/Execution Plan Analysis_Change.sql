
/* 
This Query has been Tuned by Ai-DBA Query Optimizer (v1.4.0.0).
Copyright (C) 2019-2023 Fard Technology Corp., all rights reserved.
Date: 6/9/2023 7:00:51 AM UTC
*/
BEGIN TRY     CREATE  INDEX [IX_AIDBA_SEARCH_INDEX] ON [ITEH].[DBO].[ALARMHISTORY] ([AL_EVENT_TIME],[AL_EVENT_TIME_MS],[AL_DELETED]) INCLUDE ([AL_START_TIME],[AL_START_TIME_MS],[AL_TAG],[AL_MESSAGE],[AL_ACK],[AL_ACTIVE],[AL_TAG_VALUE],[AL_PREV_TAG_VALUE],[AL_GROUP],[AL_PRIORITY],[AL_SELECTION],[AL_TYPE],[AL_ACK_REQ],[AL_NORM_TIME],[AL_NORM_TIME_MS],[AL_ACK_TIME],[AL_ACK_TIME_MS],[AL_USER],[AL_USER_COMMENT],[AL_USER_FULL],[AL_STATION],[LAST_UPDATE],[LAST_UPDATE_MS]) WITH (DROP_EXISTING=OFF );
 END TRY BEGIN CATCH END CATCH;
