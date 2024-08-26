{
 "cells": [
  {
   "cell_type": "code",
   "execution_count": 1,
   "id": "cf4e18d7",
   "metadata": {
    "_execution_state": "idle",
    "_uuid": "051d70d956493feee0c6d64651c6a088724dca2a",
    "execution": {
     "iopub.execute_input": "2024-08-26T09:40:24.435076Z",
     "iopub.status.busy": "2024-08-26T09:40:24.432066Z",
     "iopub.status.idle": "2024-08-26T09:40:24.748756Z",
     "shell.execute_reply": "2024-08-26T09:40:24.746007Z"
    },
    "papermill": {
     "duration": 0.328498,
     "end_time": "2024-08-26T09:40:24.752256",
     "exception": false,
     "start_time": "2024-08-26T09:40:24.423758",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 6 × 6</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>Lifter.Name</th><th scope=col>Age</th><th scope=col>Weight.Class</th><th scope=col>Lift.Type</th><th scope=col>Amount.Lifted..kg.</th><th scope=col>Year</th></tr>\n",
       "\t<tr><th></th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>1</th><td>Jessica Wilson</td><td>46</td><td>59 kg </td><td>Bench Press</td><td>269</td><td>2015</td></tr>\n",
       "\t<tr><th scope=row>2</th><td>John Doe      </td><td>60</td><td>83 kg </td><td>Bench Press</td><td>179</td><td>2015</td></tr>\n",
       "\t<tr><th scope=row>3</th><td>Emily Davis   </td><td>41</td><td>105 kg</td><td>Bench Press</td><td>235</td><td>2015</td></tr>\n",
       "\t<tr><th scope=row>4</th><td>Emily Davis   </td><td>33</td><td>66 kg </td><td>Squat      </td><td>359</td><td>2015</td></tr>\n",
       "\t<tr><th scope=row>5</th><td>Laura Taylor  </td><td>56</td><td>74 kg </td><td>Deadlift   </td><td>221</td><td>2015</td></tr>\n",
       "\t<tr><th scope=row>6</th><td>Sarah Thomas  </td><td>56</td><td>74 kg </td><td>Squat      </td><td>264</td><td>2015</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 6 × 6\n",
       "\\begin{tabular}{r|llllll}\n",
       "  & Lifter.Name & Age & Weight.Class & Lift.Type & Amount.Lifted..kg. & Year\\\\\n",
       "  & <chr> & <int> & <chr> & <chr> & <int> & <int>\\\\\n",
       "\\hline\n",
       "\t1 & Jessica Wilson & 46 & 59 kg  & Bench Press & 269 & 2015\\\\\n",
       "\t2 & John Doe       & 60 & 83 kg  & Bench Press & 179 & 2015\\\\\n",
       "\t3 & Emily Davis    & 41 & 105 kg & Bench Press & 235 & 2015\\\\\n",
       "\t4 & Emily Davis    & 33 & 66 kg  & Squat       & 359 & 2015\\\\\n",
       "\t5 & Laura Taylor   & 56 & 74 kg  & Deadlift    & 221 & 2015\\\\\n",
       "\t6 & Sarah Thomas   & 56 & 74 kg  & Squat       & 264 & 2015\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 6 × 6\n",
       "\n",
       "| <!--/--> | Lifter.Name &lt;chr&gt; | Age &lt;int&gt; | Weight.Class &lt;chr&gt; | Lift.Type &lt;chr&gt; | Amount.Lifted..kg. &lt;int&gt; | Year &lt;int&gt; |\n",
       "|---|---|---|---|---|---|---|\n",
       "| 1 | Jessica Wilson | 46 | 59 kg  | Bench Press | 269 | 2015 |\n",
       "| 2 | John Doe       | 60 | 83 kg  | Bench Press | 179 | 2015 |\n",
       "| 3 | Emily Davis    | 41 | 105 kg | Bench Press | 235 | 2015 |\n",
       "| 4 | Emily Davis    | 33 | 66 kg  | Squat       | 359 | 2015 |\n",
       "| 5 | Laura Taylor   | 56 | 74 kg  | Deadlift    | 221 | 2015 |\n",
       "| 6 | Sarah Thomas   | 56 | 74 kg  | Squat       | 264 | 2015 |\n",
       "\n"
      ],
      "text/plain": [
       "  Lifter.Name    Age Weight.Class Lift.Type   Amount.Lifted..kg. Year\n",
       "1 Jessica Wilson 46  59 kg        Bench Press 269                2015\n",
       "2 John Doe       60  83 kg        Bench Press 179                2015\n",
       "3 Emily Davis    41  105 kg       Bench Press 235                2015\n",
       "4 Emily Davis    33  66 kg        Squat       359                2015\n",
       "5 Laura Taylor   56  74 kg        Deadlift    221                2015\n",
       "6 Sarah Thomas   56  74 kg        Squat       264                2015"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 6 × 6</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>Lifter.Name</th><th scope=col>Age</th><th scope=col>Weight.Class</th><th scope=col>Lift.Type</th><th scope=col>Amount.Lifted..kg.</th><th scope=col>Year</th></tr>\n",
       "\t<tr><th></th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>1</th><td>Jessica Wilson</td><td>47</td><td>59 kg </td><td>Bench Press</td><td>265</td><td>2016</td></tr>\n",
       "\t<tr><th scope=row>2</th><td>John Doe      </td><td>61</td><td>83 kg </td><td>Bench Press</td><td>189</td><td>2016</td></tr>\n",
       "\t<tr><th scope=row>3</th><td>Emily Davis   </td><td>42</td><td>105 kg</td><td>Bench Press</td><td>230</td><td>2016</td></tr>\n",
       "\t<tr><th scope=row>4</th><td>Emily Davis   </td><td>34</td><td>66 kg </td><td>Squat      </td><td>371</td><td>2016</td></tr>\n",
       "\t<tr><th scope=row>5</th><td>Laura Taylor  </td><td>57</td><td>74 kg </td><td>Deadlift   </td><td>227</td><td>2016</td></tr>\n",
       "\t<tr><th scope=row>6</th><td>Sarah Thomas  </td><td>57</td><td>74 kg </td><td>Squat      </td><td>271</td><td>2016</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 6 × 6\n",
       "\\begin{tabular}{r|llllll}\n",
       "  & Lifter.Name & Age & Weight.Class & Lift.Type & Amount.Lifted..kg. & Year\\\\\n",
       "  & <chr> & <int> & <chr> & <chr> & <int> & <int>\\\\\n",
       "\\hline\n",
       "\t1 & Jessica Wilson & 47 & 59 kg  & Bench Press & 265 & 2016\\\\\n",
       "\t2 & John Doe       & 61 & 83 kg  & Bench Press & 189 & 2016\\\\\n",
       "\t3 & Emily Davis    & 42 & 105 kg & Bench Press & 230 & 2016\\\\\n",
       "\t4 & Emily Davis    & 34 & 66 kg  & Squat       & 371 & 2016\\\\\n",
       "\t5 & Laura Taylor   & 57 & 74 kg  & Deadlift    & 227 & 2016\\\\\n",
       "\t6 & Sarah Thomas   & 57 & 74 kg  & Squat       & 271 & 2016\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 6 × 6\n",
       "\n",
       "| <!--/--> | Lifter.Name &lt;chr&gt; | Age &lt;int&gt; | Weight.Class &lt;chr&gt; | Lift.Type &lt;chr&gt; | Amount.Lifted..kg. &lt;int&gt; | Year &lt;int&gt; |\n",
       "|---|---|---|---|---|---|---|\n",
       "| 1 | Jessica Wilson | 47 | 59 kg  | Bench Press | 265 | 2016 |\n",
       "| 2 | John Doe       | 61 | 83 kg  | Bench Press | 189 | 2016 |\n",
       "| 3 | Emily Davis    | 42 | 105 kg | Bench Press | 230 | 2016 |\n",
       "| 4 | Emily Davis    | 34 | 66 kg  | Squat       | 371 | 2016 |\n",
       "| 5 | Laura Taylor   | 57 | 74 kg  | Deadlift    | 227 | 2016 |\n",
       "| 6 | Sarah Thomas   | 57 | 74 kg  | Squat       | 271 | 2016 |\n",
       "\n"
      ],
      "text/plain": [
       "  Lifter.Name    Age Weight.Class Lift.Type   Amount.Lifted..kg. Year\n",
       "1 Jessica Wilson 47  59 kg        Bench Press 265                2016\n",
       "2 John Doe       61  83 kg        Bench Press 189                2016\n",
       "3 Emily Davis    42  105 kg       Bench Press 230                2016\n",
       "4 Emily Davis    34  66 kg        Squat       371                2016\n",
       "5 Laura Taylor   57  74 kg        Deadlift    227                2016\n",
       "6 Sarah Thomas   57  74 kg        Squat       271                2016"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 6 × 6</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>Lifter.Name</th><th scope=col>Age</th><th scope=col>Weight.Class</th><th scope=col>Lift.Type</th><th scope=col>Amount.Lifted..kg.</th><th scope=col>Year</th></tr>\n",
       "\t<tr><th></th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>1</th><td>Jessica Wilson</td><td>48</td><td>59 kg </td><td>Bench Press</td><td>269</td><td>2017</td></tr>\n",
       "\t<tr><th scope=row>2</th><td>John Doe      </td><td>62</td><td>83 kg </td><td>Bench Press</td><td>179</td><td>2017</td></tr>\n",
       "\t<tr><th scope=row>3</th><td>Emily Davis   </td><td>43</td><td>105 kg</td><td>Bench Press</td><td>232</td><td>2017</td></tr>\n",
       "\t<tr><th scope=row>4</th><td>Emily Davis   </td><td>35</td><td>66 kg </td><td>Squat      </td><td>364</td><td>2017</td></tr>\n",
       "\t<tr><th scope=row>5</th><td>Laura Taylor  </td><td>58</td><td>74 kg </td><td>Deadlift   </td><td>219</td><td>2017</td></tr>\n",
       "\t<tr><th scope=row>6</th><td>Sarah Thomas  </td><td>58</td><td>74 kg </td><td>Squat      </td><td>269</td><td>2017</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 6 × 6\n",
       "\\begin{tabular}{r|llllll}\n",
       "  & Lifter.Name & Age & Weight.Class & Lift.Type & Amount.Lifted..kg. & Year\\\\\n",
       "  & <chr> & <int> & <chr> & <chr> & <int> & <int>\\\\\n",
       "\\hline\n",
       "\t1 & Jessica Wilson & 48 & 59 kg  & Bench Press & 269 & 2017\\\\\n",
       "\t2 & John Doe       & 62 & 83 kg  & Bench Press & 179 & 2017\\\\\n",
       "\t3 & Emily Davis    & 43 & 105 kg & Bench Press & 232 & 2017\\\\\n",
       "\t4 & Emily Davis    & 35 & 66 kg  & Squat       & 364 & 2017\\\\\n",
       "\t5 & Laura Taylor   & 58 & 74 kg  & Deadlift    & 219 & 2017\\\\\n",
       "\t6 & Sarah Thomas   & 58 & 74 kg  & Squat       & 269 & 2017\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 6 × 6\n",
       "\n",
       "| <!--/--> | Lifter.Name &lt;chr&gt; | Age &lt;int&gt; | Weight.Class &lt;chr&gt; | Lift.Type &lt;chr&gt; | Amount.Lifted..kg. &lt;int&gt; | Year &lt;int&gt; |\n",
       "|---|---|---|---|---|---|---|\n",
       "| 1 | Jessica Wilson | 48 | 59 kg  | Bench Press | 269 | 2017 |\n",
       "| 2 | John Doe       | 62 | 83 kg  | Bench Press | 179 | 2017 |\n",
       "| 3 | Emily Davis    | 43 | 105 kg | Bench Press | 232 | 2017 |\n",
       "| 4 | Emily Davis    | 35 | 66 kg  | Squat       | 364 | 2017 |\n",
       "| 5 | Laura Taylor   | 58 | 74 kg  | Deadlift    | 219 | 2017 |\n",
       "| 6 | Sarah Thomas   | 58 | 74 kg  | Squat       | 269 | 2017 |\n",
       "\n"
      ],
      "text/plain": [
       "  Lifter.Name    Age Weight.Class Lift.Type   Amount.Lifted..kg. Year\n",
       "1 Jessica Wilson 48  59 kg        Bench Press 269                2017\n",
       "2 John Doe       62  83 kg        Bench Press 179                2017\n",
       "3 Emily Davis    43  105 kg       Bench Press 232                2017\n",
       "4 Emily Davis    35  66 kg        Squat       364                2017\n",
       "5 Laura Taylor   58  74 kg        Deadlift    219                2017\n",
       "6 Sarah Thomas   58  74 kg        Squat       269                2017"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "pl_2015 <- read.csv(\"/kaggle/input/powerlifting/powerlifting_2015.csv\")\n",
    "head(pl_2015)\n",
    "pl_2016 <- read.csv(\"/kaggle/input/powerlifting/powerlifting_2016.csv\")\n",
    "head(pl_2016)\n",
    "pl_2017 <- read.csv(\"/kaggle/input/powerlifting/powerlifting_2017.csv\")\n",
    "head(pl_2017)\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 2,
   "id": "6273cab5",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-08-26T09:40:24.804860Z",
     "iopub.status.busy": "2024-08-26T09:40:24.765847Z",
     "iopub.status.idle": "2024-08-26T09:40:26.252634Z",
     "shell.execute_reply": "2024-08-26T09:40:26.249922Z"
    },
    "papermill": {
     "duration": 1.498516,
     "end_time": "2024-08-26T09:40:26.256257",
     "exception": false,
     "start_time": "2024-08-26T09:40:24.757741",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "── \u001b[1mAttaching core tidyverse packages\u001b[22m ──────────────────────── tidyverse 2.0.0 ──\n",
      "\u001b[32m✔\u001b[39m \u001b[34mdplyr    \u001b[39m 1.1.4     \u001b[32m✔\u001b[39m \u001b[34mreadr    \u001b[39m 2.1.5\n",
      "\u001b[32m✔\u001b[39m \u001b[34mforcats  \u001b[39m 1.0.0     \u001b[32m✔\u001b[39m \u001b[34mstringr  \u001b[39m 1.5.1\n",
      "\u001b[32m✔\u001b[39m \u001b[34mggplot2  \u001b[39m 3.5.1     \u001b[32m✔\u001b[39m \u001b[34mtibble   \u001b[39m 3.2.1\n",
      "\u001b[32m✔\u001b[39m \u001b[34mlubridate\u001b[39m 1.9.3     \u001b[32m✔\u001b[39m \u001b[34mtidyr    \u001b[39m 1.3.1\n",
      "\u001b[32m✔\u001b[39m \u001b[34mpurrr    \u001b[39m 1.0.2     \n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "── \u001b[1mConflicts\u001b[22m ────────────────────────────────────────── tidyverse_conflicts() ──\n",
      "\u001b[31m✖\u001b[39m \u001b[34mdplyr\u001b[39m::\u001b[32mfilter()\u001b[39m masks \u001b[34mstats\u001b[39m::filter()\n",
      "\u001b[31m✖\u001b[39m \u001b[34mdplyr\u001b[39m::\u001b[32mlag()\u001b[39m    masks \u001b[34mstats\u001b[39m::lag()\n",
      "\u001b[36mℹ\u001b[39m Use the conflicted package (\u001b[3m\u001b[34m<http://conflicted.r-lib.org/>\u001b[39m\u001b[23m) to force all conflicts to become errors\n"
     ]
    }
   ],
   "source": [
    "# load packages\n",
    "library(tidyverse)\n",
    "library(dplyr)\n",
    "library(tidyr)\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 3,
   "id": "8f173ea5",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-08-26T09:40:26.272331Z",
     "iopub.status.busy": "2024-08-26T09:40:26.269873Z",
     "iopub.status.idle": "2024-08-26T09:40:27.103810Z",
     "shell.execute_reply": "2024-08-26T09:40:27.100733Z"
    },
    "papermill": {
     "duration": 0.845644,
     "end_time": "2024-08-26T09:40:27.107470",
     "exception": false,
     "start_time": "2024-08-26T09:40:26.261826",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "\u001b[90m# A tibble: 9 × 3\u001b[39m\n",
      "  Year  Lift.Type   total_lifts\n",
      "  \u001b[3m\u001b[90m<chr>\u001b[39m\u001b[23m \u001b[3m\u001b[90m<chr>\u001b[39m\u001b[23m             \u001b[3m\u001b[90m<int>\u001b[39m\u001b[23m\n",
      "\u001b[90m1\u001b[39m 2015  Bench Press      \u001b[4m2\u001b[24m\u001b[4m5\u001b[24m\u001b[4m8\u001b[24m507\n",
      "\u001b[90m2\u001b[39m 2015  Deadlift         \u001b[4m2\u001b[24m\u001b[4m5\u001b[24m\u001b[4m4\u001b[24m805\n",
      "\u001b[90m3\u001b[39m 2015  Squat            \u001b[4m2\u001b[24m\u001b[4m3\u001b[24m\u001b[4m7\u001b[24m686\n",
      "\u001b[90m4\u001b[39m 2016  Bench Press      \u001b[4m2\u001b[24m\u001b[4m6\u001b[24m\u001b[4m0\u001b[24m262\n",
      "\u001b[90m5\u001b[39m 2016  Deadlift         \u001b[4m2\u001b[24m\u001b[4m5\u001b[24m\u001b[4m7\u001b[24m195\n",
      "\u001b[90m6\u001b[39m 2016  Squat            \u001b[4m2\u001b[24m\u001b[4m3\u001b[24m\u001b[4m9\u001b[24m955\n",
      "\u001b[90m7\u001b[39m 2017  Bench Press      \u001b[4m2\u001b[24m\u001b[4m6\u001b[24m\u001b[4m0\u001b[24m543\n",
      "\u001b[90m8\u001b[39m 2017  Deadlift         \u001b[4m2\u001b[24m\u001b[4m5\u001b[24m\u001b[4m6\u001b[24m759\n",
      "\u001b[90m9\u001b[39m 2017  Squat            \u001b[4m2\u001b[24m\u001b[4m3\u001b[24m\u001b[4m9\u001b[24m539\n"
     ]
    },
    {
     "data": {
      "image/png": "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"
     },
     "metadata": {
      "image/png": {
       "height": 420,
       "width": 420
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "## What are the total numbe of lifts by lift type for the different years?\n",
    "\n",
    "# Add Year column to each dataset\n",
    "pl_2015 <- pl_2015 %>% mutate(Year = \"2015\")\n",
    "pl_2016 <- pl_2016 %>% mutate(Year = \"2016\")\n",
    "pl_2017 <- pl_2017 %>% mutate(Year = \"2017\")\n",
    "\n",
    "# Combine the datasets\n",
    "combined_df <- rbind(pl_2015, pl_2016, pl_2017)\n",
    "\n",
    "# Calculate the total amount lifted per year and lift type\n",
    "Yearly_Lifts <- combined_df %>%\n",
    "  group_by(Year,Lift.Type) %>%\n",
    "  summarise(total_lifts = sum(Amount.Lifted..kg., na.rm = TRUE), .groups = 'drop') %>%\n",
    "  arrange(Year, Lift.Type)\n",
    "\n",
    "# Print the results\n",
    "print(Yearly_Lifts)\n",
    "\n",
    "# print the results\n",
    "ggplot(data=Yearly_Lifts, mapping=aes(x=Lift.Type, y=total_lifts, fill=Year))+geom_col(color='black')+\n",
    "labs(title='Total Amoung Lifted Between 2015 and 2017',\n",
    "    x='Lift Type',\n",
    "    y='Total Lifts')"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 4,
   "id": "6a4ad7a6",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-08-26T09:40:27.125038Z",
     "iopub.status.busy": "2024-08-26T09:40:27.123253Z",
     "iopub.status.idle": "2024-08-26T09:40:27.177326Z",
     "shell.execute_reply": "2024-08-26T09:40:27.174673Z"
    },
    "papermill": {
     "duration": 0.067099,
     "end_time": "2024-08-26T09:40:27.181076",
     "exception": false,
     "start_time": "2024-08-26T09:40:27.113977",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "\u001b[90m# A tibble: 3 × 2\u001b[39m\n",
      "  Year  avg_age\n",
      "  \u001b[3m\u001b[90m<chr>\u001b[39m\u001b[23m   \u001b[3m\u001b[90m<dbl>\u001b[39m\u001b[23m\n",
      "\u001b[90m1\u001b[39m 2017     43.1\n",
      "\u001b[90m2\u001b[39m 2016     42.1\n",
      "\u001b[90m3\u001b[39m 2015     41.1\n"
     ]
    }
   ],
   "source": [
    "## What is the average age of lifters over the years?\n",
    "\n",
    "# Add Year column to each dataset\n",
    "pl_2015 <- pl_2015 %>% mutate(Year = \"2015\")\n",
    "pl_2016 <- pl_2016 %>% mutate(Year = \"2016\")\n",
    "pl_2017 <- pl_2017 %>% mutate(Year = \"2017\")\n",
    "\n",
    "# Calculate the average age by year\n",
    "lifters_age <- combined_df %>%\n",
    "group_by(Year)%>%\n",
    "summarise(avg_age = mean(Age, na.rm = 'TRUE'),.groups='drop')%>%\n",
    "arrange(desc(avg_age))\n",
    "\n",
    "# Print results\n",
    "print(lifters_age)\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 5,
   "id": "dd9cd610",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-08-26T09:40:27.198831Z",
     "iopub.status.busy": "2024-08-26T09:40:27.196991Z",
     "iopub.status.idle": "2024-08-26T09:40:27.542793Z",
     "shell.execute_reply": "2024-08-26T09:40:27.539740Z"
    },
    "papermill": {
     "duration": 0.358851,
     "end_time": "2024-08-26T09:40:27.546519",
     "exception": false,
     "start_time": "2024-08-26T09:40:27.187668",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "image/png": "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\ndtP/+8EvloWdBeoPnvz+Uafdt+Wxh7zxarD1P/LRtQu5ZIH6jdcbrjr4zN99+sAjd9hkzafu\nvObqP7561k+v3LyuygL1B53NT/3todffvOWvV108c/SR3z/+E++6QEUqp6Plhd123fXCx+Yu\n3dD1vf33nPSNe4vFYrGr9ag9dzt+2tPdO1rm3bXLLrv85N+LKjPoyqpl/u277LLLn+a3dN9s\nX/yPXXbZ5ZKXGotFC9S/NPzo+C+f+P1ddtnl8llLl8AC9Q8zjv7yoec+tpwdFqjf+NaXdj/y\n8keX3uq88PRTfvDw6xaof5r/5C92/+I35rR39bBA4ruSOlueW/9DH/rshoOWbsiMHVzdPn9R\nSql1wYwXWjonTly7e0f1kO3G1hca7nylQpOupLL54QcddNBHBxaW3M7kU0p1uWyyQP3Jgqd/\ndc7NLaeevvubN1qgfuLhha1Dxw7pbF74yqvz3/zrIQvUT7Q13vtAY9un9xyxdEP2uDPOOmTM\nKhaoHyp2Nl7wrV9+dvLXh+UzPSyQ35dXUmHw9hddtP2ym+2Lnrjq5UXrHzgypdS2+NGU0qZ1\nVcv2blKXv/nRBWnf8o+58qoasMVuu22RUpr38N8enDXrwdtvWHX0LvutVpcsUL/R1Tbr7FOv\n/fTJV4yoe8tbOlmgfuKhRe3Fuy/e63tPtBeL+QGrfupLxx62yxbJAvUbbQvvTymt/o/fnzz1\nd8+80rz6+ht9bv+vfmbLNSxQP/Tsr896epXdvrXZ0NTjnyBX7PqL5x+Y/o0jTmnf8DOTP71O\nSqmrdXFKaZX8Gws0vCrXsailYvOt3Gbf/aebb7nt/meaN9t0g+4tFqif+MO5p87f6qivjHv7\nh1paoP6gs+2lRbmqVYd/7PvXXvfLa686freRv7/ylKufmJ8sUL/R2bowpXTBZXdts+cRZ0/5\nn4kjM5effsSNLy6yQP1NV9uss38x8/Mnf37JzXdfIFfsKq9t3pNXfe/iPzw0d4c9jjj7SzvW\nZDIppWyhNqU0r6OrfulbS89p78wNKfT0QJTMqKP/57spNb1832FHn/OtNTc9a8LaFqg/ePWv\nl/748TUuv/qT79xlgfqDXGHt6667bumt6u33/vpTNzf86YePHXDedhaon8jmcyml8aef/vlR\nQ1NKIzcZM+uevW687LGdjrJA/cuL0y9YNGCHPdZe8uKwHv4EuWJXYY3P3370od94JI0598of\n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\nAABJRU5ErkJggg=="
     },
     "metadata": {
      "image/png": {
       "height": 420,
       "width": 420
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "# Are there any noticeable trends in the age of lifters in the year of 2017?\n",
    "ggplot(data=pl_2017, mapping=aes(x=Age))+geom_histogram(binwidth=5, color='black', fill='lightblue')\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 6,
   "id": "2f76f7e0",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-08-26T09:40:27.565084Z",
     "iopub.status.busy": "2024-08-26T09:40:27.563343Z",
     "iopub.status.idle": "2024-08-26T09:40:28.128570Z",
     "shell.execute_reply": "2024-08-26T09:40:28.125192Z"
    },
    "papermill": {
     "duration": 0.578361,
     "end_time": "2024-08-26T09:40:28.132346",
     "exception": false,
     "start_time": "2024-08-26T09:40:27.553985",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "\u001b[90m# A tibble: 27 × 3\u001b[39m\n",
      "   Year  Weight.Class lifter_count\n",
      "   \u001b[3m\u001b[90m<chr>\u001b[39m\u001b[23m \u001b[3m\u001b[90m<chr>\u001b[39m\u001b[23m               \u001b[3m\u001b[90m<int>\u001b[39m\u001b[23m\n",
      "\u001b[90m 1\u001b[39m 2015  105 kg                318\n",
      "\u001b[90m 2\u001b[39m 2015  120 kg                319\n",
      "\u001b[90m 3\u001b[39m 2015  52 kg                 326\n",
      "\u001b[90m 4\u001b[39m 2015  59 kg                 348\n",
      "\u001b[90m 5\u001b[39m 2015  66 kg                 326\n",
      "\u001b[90m 6\u001b[39m 2015  74 kg                 321\n",
      "\u001b[90m 7\u001b[39m 2015  83 kg                 327\n",
      "\u001b[90m 8\u001b[39m 2015  93 kg                 359\n",
      "\u001b[90m 9\u001b[39m 2015  Open                  356\n",
      "\u001b[90m10\u001b[39m 2016  105 kg                318\n",
      "\u001b[90m# ℹ 17 more rows\u001b[39m\n"
     ]
    },
    {
     "data": {
      "image/png": "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"
     },
     "metadata": {
      "image/png": {
       "height": 420,
       "width": 420
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "## How has the distribution of lifters across different weight classes changed over time?\n",
    "# Add Year column to each dataset\n",
    "pl_2015 <- pl_2015 %>% mutate(Year = \"2015\")\n",
    "pl_2016 <- pl_2016 %>% mutate(Year = \"2016\")\n",
    "pl_2017 <- pl_2017 %>% mutate(Year = \"2017\")\n",
    "\n",
    "# lifters by weight class by the years\n",
    "weightclass_distribution <- combined_df %>%\n",
    "group_by (Year,Weight.Class)%>%\n",
    "summarise(lifter_count = n(),.groups='drop')\n",
    "\n",
    "# print results\n",
    "print(weightclass_distribution)\n",
    "\n",
    "# Visualize\n",
    "ggplot(data=weightclass_distribution, mapping=aes(x=Weight.Class, y=lifter_count, fill=Year))+\n",
    "geom_col(color='black')+ labs(title='Distribution of Lifters across weight Classes over time',\n",
    "                             x='Weight Class',\n",
    "                             y='lifter_count') +theme_minimal()\n",
    "\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 7,
   "id": "bd7ff37f",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-08-26T09:40:28.153522Z",
     "iopub.status.busy": "2024-08-26T09:40:28.151719Z",
     "iopub.status.idle": "2024-08-26T09:40:28.203255Z",
     "shell.execute_reply": "2024-08-26T09:40:28.200450Z"
    },
    "papermill": {
     "duration": 0.065382,
     "end_time": "2024-08-26T09:40:28.206793",
     "exception": false,
     "start_time": "2024-08-26T09:40:28.141411",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "\u001b[90m# A tibble: 3 × 2\u001b[39m\n",
      "  Year  correlation\n",
      "  \u001b[3m\u001b[90m<chr>\u001b[39m\u001b[23m       \u001b[3m\u001b[90m<dbl>\u001b[39m\u001b[23m\n",
      "\u001b[90m1\u001b[39m 2015      -\u001b[31m0\u001b[39m\u001b[31m.\u001b[39m\u001b[31m0\u001b[39m\u001b[31m13\u001b[4m7\u001b[24m\u001b[39m\n",
      "\u001b[90m2\u001b[39m 2016      -\u001b[31m0\u001b[39m\u001b[31m.\u001b[39m\u001b[31m0\u001b[39m\u001b[31m14\u001b[4m1\u001b[24m\u001b[39m\n",
      "\u001b[90m3\u001b[39m 2017      -\u001b[31m0\u001b[39m\u001b[31m.\u001b[39m\u001b[31m0\u001b[39m\u001b[31m12\u001b[4m6\u001b[24m\u001b[39m\n"
     ]
    }
   ],
   "source": [
    "# What is the correlation between the lifters' age and the amount lifted in each year?\n",
    "\n",
    "# Add year column to each dataset\n",
    "\n",
    "pl_2015 <- pl_2015 %>% mutate(Year='2015')\n",
    "pl_2016 <- pl_2016 %>% mutate(Year='2016')\n",
    "pl_2017 <- pl_2017 %>% mutate(Year='2017')\n",
    "\n",
    "# establish correlation\n",
    "age_lift_corr <- combined_df %>%\n",
    "group_by(Year)%>%\n",
    "summarise(correlation = cor(Age,Amount.Lifted..kg.,use=\"complete.obs\"),.groups='drop')\n",
    "print(age_lift_corr)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 8,
   "id": "5a3c07d9",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-08-26T09:40:28.226967Z",
     "iopub.status.busy": "2024-08-26T09:40:28.225254Z",
     "iopub.status.idle": "2024-08-26T09:40:28.285375Z",
     "shell.execute_reply": "2024-08-26T09:40:28.282780Z"
    },
    "papermill": {
     "duration": 0.073963,
     "end_time": "2024-08-26T09:40:28.288929",
     "exception": false,
     "start_time": "2024-08-26T09:40:28.214966",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "\u001b[90m# A tibble: 3 × 4\u001b[39m\n",
      "  Year  avg_age avg_lift groups\n",
      "  \u001b[3m\u001b[90m<chr>\u001b[39m\u001b[23m   \u001b[3m\u001b[90m<dbl>\u001b[39m\u001b[23m    \u001b[3m\u001b[90m<dbl>\u001b[39m\u001b[23m \u001b[3m\u001b[90m<chr>\u001b[39m\u001b[23m \n",
      "\u001b[90m1\u001b[39m 2015     41.1     250. drop  \n",
      "\u001b[90m2\u001b[39m 2016     42.1     252. drop  \n",
      "\u001b[90m3\u001b[39m 2017     43.1     252. drop  \n"
     ]
    }
   ],
   "source": [
    "# How does the average amount lifted by different age groups compare across the years?\n",
    "\n",
    "# Add year column to each dataset\n",
    "\n",
    "pl_2015 <- pl_2015 %>% mutate(Year='2015')\n",
    "pl_2016 <- pl_2016 %>% mutate(Year='2016')\n",
    "pl_2017 <- pl_2017 %>% mutate(Year='2017')\n",
    "\n",
    "# calculate the average amount lifted \n",
    "amountlifted_yearly <- combined_df %>%\n",
    "group_by (Year)%>%\n",
    "summarise(\n",
    "    avg_age = mean(Age),\n",
    "    avg_lift = mean(Amount.Lifted..kg.),groups='drop')\n",
    "\n",
    "# print results\n",
    "print(amountlifted_yearly)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 9,
   "id": "97434497",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-08-26T09:40:28.309680Z",
     "iopub.status.busy": "2024-08-26T09:40:28.307882Z",
     "iopub.status.idle": "2024-08-26T09:40:28.384289Z",
     "shell.execute_reply": "2024-08-26T09:40:28.381546Z"
    },
    "papermill": {
     "duration": 0.090632,
     "end_time": "2024-08-26T09:40:28.387871",
     "exception": false,
     "start_time": "2024-08-26T09:40:28.297239",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "\u001b[90m# A tibble: 16 × 3\u001b[39m\n",
      "\u001b[90m# Groups:   Year [3]\u001b[39m\n",
      "   Year    Age max_lift\n",
      "   \u001b[3m\u001b[90m<chr>\u001b[39m\u001b[23m \u001b[3m\u001b[90m<int>\u001b[39m\u001b[23m    \u001b[3m\u001b[90m<int>\u001b[39m\u001b[23m\n",
      "\u001b[90m 1\u001b[39m 2015     24      399\n",
      "\u001b[90m 2\u001b[39m 2015     28      399\n",
      "\u001b[90m 3\u001b[39m 2015     29      399\n",
      "\u001b[90m 4\u001b[39m 2015     34      399\n",
      "\u001b[90m 5\u001b[39m 2015     39      399\n",
      "\u001b[90m 6\u001b[39m 2015     40      399\n",
      "\u001b[90m 7\u001b[39m 2015     48      399\n",
      "\u001b[90m 8\u001b[39m 2015     51      399\n",
      "\u001b[90m 9\u001b[39m 2015     53      399\n",
      "\u001b[90m10\u001b[39m 2015     57      399\n",
      "\u001b[90m11\u001b[39m 2015     58      399\n",
      "\u001b[90m12\u001b[39m 2016     20      410\n",
      "\u001b[90m13\u001b[39m 2016     49      410\n",
      "\u001b[90m14\u001b[39m 2016     58      410\n",
      "\u001b[90m15\u001b[39m 2017     26      411\n",
      "\u001b[90m16\u001b[39m 2017     34      411\n"
     ]
    }
   ],
   "source": [
    "## Is there a specific age group that consistently performs better in terms of the amount lifted?\n",
    "\n",
    "# Add year column to the dataset\n",
    "pl_2015 <- pl_2015 %>% mutate(Year='2015')\n",
    "pl_2016 <- pl_2016 %>% mutate(Year='2016')\n",
    "pl_2017 <- pl_2017 %>% mutate(Year='2017')\n",
    "\n",
    "# establish the highest amount lifted by age and year\n",
    "lift_age_year <- combined_df %>%\n",
    "group_by (Year, Age)%>%\n",
    "summarise(max_lift = max(Amount.Lifted..kg.),.groups='drop')\n",
    "\n",
    "# establish max lifts by year\n",
    "max_lift_year <- lift_age_year%>%\n",
    "group_by (Year)%>%\n",
    "top_n(1,max_lift)\n",
    "\n",
    "# print results\n",
    "print(max_lift_year)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 10,
   "id": "18f53d96",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-08-26T09:40:28.408969Z",
     "iopub.status.busy": "2024-08-26T09:40:28.407244Z",
     "iopub.status.idle": "2024-08-26T09:40:28.478330Z",
     "shell.execute_reply": "2024-08-26T09:40:28.474648Z"
    },
    "papermill": {
     "duration": 0.085827,
     "end_time": "2024-08-26T09:40:28.482461",
     "exception": false,
     "start_time": "2024-08-26T09:40:28.396634",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "\u001b[90m# A tibble: 12 × 3\u001b[39m\n",
      "\u001b[90m# Groups:   Year [3]\u001b[39m\n",
      "   Year  Lifter.Name      max_lift\n",
      "   \u001b[3m\u001b[90m<chr>\u001b[39m\u001b[23m \u001b[3m\u001b[90m<chr>\u001b[39m\u001b[23m               \u001b[3m\u001b[90m<int>\u001b[39m\u001b[23m\n",
      "\u001b[90m 1\u001b[39m 2015  Chris Brown           399\n",
      "\u001b[90m 2\u001b[39m 2015  Daniel Lee            399\n",
      "\u001b[90m 3\u001b[39m 2015  Emily Davis           399\n",
      "\u001b[90m 4\u001b[39m 2015  Jane Smith            399\n",
      "\u001b[90m 5\u001b[39m 2015  Matthew Anderson      399\n",
      "\u001b[90m 6\u001b[39m 2015  Michael Johnson       399\n",
      "\u001b[90m 7\u001b[39m 2015  Sarah Thomas          399\n",
      "\u001b[90m 8\u001b[39m 2016  Jane Smith            410\n",
      "\u001b[90m 9\u001b[39m 2016  Michael Johnson       410\n",
      "\u001b[90m10\u001b[39m 2016  Sarah Thomas          410\n",
      "\u001b[90m11\u001b[39m 2017  Daniel Lee            411\n",
      "\u001b[90m12\u001b[39m 2017  Laura Taylor          411\n"
     ]
    }
   ],
   "source": [
    "# Who are the top lifters for each year?\n",
    "\n",
    "# Add year column to the dataset\n",
    "pl_2015 <- pl_2015 %>% mutate(Year='2015')\n",
    "pl_2016 <- pl_2016 %>% mutate(Year='2016')\n",
    "pl_2017 <- pl_2017 %>% mutate(Year='2017')\n",
    "\n",
    "# establish max amount lifted by lifter \n",
    "lifter_weight <- combined_df%>%\n",
    "group_by(Year, Lifter.Name)%>%\n",
    "summarise(max_lift=max(Amount.Lifted..kg.),.groups='drop')\n",
    "\n",
    "# establish top lifter by year\n",
    "lifter_year <- lifter_weight%>%\n",
    "group_by(Year)%>%\n",
    "top_n(1,max_lift)\n",
    "\n",
    "# print results\n",
    "print(lifter_year)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 11,
   "id": "5651ff13",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-08-26T09:40:28.504405Z",
     "iopub.status.busy": "2024-08-26T09:40:28.502566Z",
     "iopub.status.idle": "2024-08-26T09:40:28.994162Z",
     "shell.execute_reply": "2024-08-26T09:40:28.991066Z"
    },
    "papermill": {
     "duration": 0.50789,
     "end_time": "2024-08-26T09:40:28.998842",
     "exception": false,
     "start_time": "2024-08-26T09:40:28.490952",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "\u001b[90m# A tibble: 3 × 2\u001b[39m\n",
      "  Lift.Type   w.class_count\n",
      "  \u001b[3m\u001b[90m<chr>\u001b[39m\u001b[23m               \u001b[3m\u001b[90m<int>\u001b[39m\u001b[23m\n",
      "\u001b[90m1\u001b[39m Deadlift             \u001b[4m3\u001b[24m075\n",
      "\u001b[90m2\u001b[39m Bench Press          \u001b[4m3\u001b[24m033\n",
      "\u001b[90m3\u001b[39m Squat                \u001b[4m2\u001b[24m892\n"
     ]
    },
    {
     "data": {
      "image/png": "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\neWXelp37Du7Zvnjmk9uyzA8+WEk006hucQc/GLdqy75Th3a+N3aKtVTrh8uGiMgV78pnEwAA\ngKJN8/CYWuPGje9ZunLUvxLq9OZh3cckb1i9IP/NMxN+nz334617jzmMoeUqxHV8eEDLahEi\nIm7nyvnTF6/8NSlbq1w3fuDIflWC/z46fKW78tnkXzgU60Vmszn3VLWkpCQOxcITYWFhJpPJ\nZrOlpqYGehYUApqm5Z5AnZaWlpOTE+hx1BEdHR3oEeA/Vwm71MMHT9mcIhIXF3f/D7+OLRf2\nz/vdO+ffd++kI077BV8Oee0IOy8i7FBQhB0KhLDzEcKuSLnKyRPL7mjUZ//53J8//r+GH//X\nOmEVhnh7KgAAABTYVcKuyYSpcy5ki8jAgQPjX5zWs3jQ/6ygM4Y2vqebr6YDAACAx64SdtV6\nPFJNREQWLVrUpU/fAaU5TQEAgKJu2/j69cZtHX0k5aXyYf++d2z58Gm2e9NOvZO3ZPGYnqPm\nfp0Vfu+5g+/l87Cr2pdvu+JYPissO5d5d9T/7mPC5Ty9jt2aNWtE5PyJQ2cz/uMja9WqVfPm\nUAAAoNDSGQx616XLbmScfue+lxdV6DLq9W53iEjiL2MefWn7swuXNQkz/c+G5bsNGFUrOfdn\nlz1x6oz51hJdBz9cOW+F2CCjIF+ehl32uVX3NOvx7b7z/3kvH6UHAAC5xv2VNO6ym1lnl4tI\nv5lje8WEikjm6Z+++WZ1b7vz3xvGPvrc5L9/tmf8MXXG/JDSfSZP7uTrgVXiadi9fddD3x1I\n6zTomTvqVDBoPh0JAACow+1yiYhZ56d6cDttLp1JX1RbxdOwe+m3s5V6fPb17Dt9Og0AACjs\nJlaMeCW7e+5n7L6oWbzr7nMiMqps6NjobqNDVo4+kiIi90RbQ8s+mXp8kucPu2d20xpDNs88\nkfZYmbxP/LtaFwv+xdIz/dR7Vr3u5jf/uH/P6Bfmrki26aLKxLbvOXjqy4OijZcOCqcfXT/m\n6Zc/+/GXM5m6ilVv7jlw1PMDOvjjqxr8yKOX43amnbU7y/eo4+tpAACASpq8vWTx7NtEpN9H\nn3+5ZHTPDz/7cOzNIjJmyVeff9S3QA9V6f4XdZo2d9KuvCWpR15bfSG73gtP5d7c80b7YbO+\nv/WuR0Y/91iTiukLJg+t3erZvCO+GSe/uLl6m9lf72/do9/YJ/vXCT86bmDH+o984IUXeSPx\n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\napH5rPN9y7J3rL10GNoSElm7SccJb715R6VQ7w5zDTwNu3ldn8sIqrd+/4amJYNyl9zyypJD\nI39rVaX5893fHrTzaZ9NCAAAIKWaTfvkpXoi4nbaj21f+fhTwxsnlD3wSdeADGMtft+3SweK\niIjzzJFts556vsstB06e2xRpCPDZB56G3bSDKVX6vpFXdbksxRvMHFjttukzRAg7AADgQ5bo\nuvHx8RdvtGpTbvsX7T4dJ+Jp2DmcboNeu/p6ntGbYy4NE9+qza2JUbVee/lY2pRK4ZeeMfOC\nwervK4d42pVOt9sUbvr3cr1VL8IlagAAgF/p9JohKDb3Z5ft5CtDutWNLWsJiaod3/2Dzafz\nVittNkzcva5T9RImoz6qTOW+L36eu9yevuup+9tXLRNhjbip9X2j/ky/9M3yTtupZ+5uGhFs\niixdqc/4zzwZxhxZXkRO2ZwiEmnUzzp2/InuLctUfDj/2Y6smNOxQY3IYHN0mUp3DXw11em+\n0kLPebrHbmiFsJfmjjk+9usYsz5voct2atwbe0PLPlmgpwQAAGpwnThu/2T+NW9boPWzk3Zu\n2mQSEXE5jm3/4bGFxx+d/13uXaPjb5mb1nzWjAXVo3Q/ff7Goy2qOPYk9I29uPNs1u3dH5k4\nb3LLqnu/evnukXeXezhlbDlLv3pNvwnp8M77y0saEmcO6XN7I0na9Xru+ivubDtwzNyfJ1fd\n/dXL94y8p0qf1Odi8vnwnOvcsR2Ter2kM4SPLHtxtU/7dmjd89V1r9XPZzZb6oY6nYY0f3bO\nt3NuzTz208M9h3WI67y6z/l/L9w4vKbnv0qeht3AZc+/fPOomnGtnhjZu2mdKlad/fDuXz6c\n+uqqJMe4b4d6/nwAAEAdKcmubb/756lObRjWrNmlm+FVurauGSEi6QnTXvvl7JrzH8VHmEXk\nlkbx9i+jJgze0Hdlp9w1I7p88mrf1iJSfcT8umMX/3Q0/XzG8/MP2dae/6BFuElE6vx4rtMD\nH5+yuUqZdCJSsvX8Vx9tIyJxI+ZXG7No88lM+VfYpZ2YrGmT824agys/v3DNrSHG3JuJFWeM\n7d0q/9myz69Ic7oGDH7gtlJWqV9v1bJSB6xR2ec//vfCAv0qeRp2kbVG7Ppa333A6HHD1uct\ntETGjf9k6fMNuNwJAABFkRYSqpUuc23buk8muNPTPF+/YpfVhz5vmftz5vHJ0LcAACAASURB\nVPmEBRO63FO/9sazh8ruXeF2u24vZrl85QjbPpGLYVe5b6285dEGnbjlxFebLcX+r8XfnzEL\nLt1vzZp+eetUG1D7H+v/l8tOnhBjcFRcreqRlkuHNKv0qpH7w4UrzxZSdsSDDd6/u0LF+Pb/\n16xp07btu3SuVdLl+I+Fnv8SSYGuY1eh/bDfjg7c+fO6P/YezXQaSlWqeXv8rWGXfQ4xPi52\n3d4DBXp6AABQeGnlK/rncif/wxpZpt/kr4fMLP3Cz4nziwXpDBEpF05cfmaEprt0YoA59H9r\nx5Xj0nQWuYKQMONVB/jHyRP/EhZ58dmN4VecTWeIXvDriec2rfhh7YZNq+dPenbo7aO+++7V\ntv+58Krz5CngSbmaqVbjtg/17jugb687WzUI++fZJSeOHinYowEAAFwTZ84Jp9sdFKQPr9TP\n7UyZe9IefJH1hbva9f/oUD7blulUJ/v8t7//fcJE5pkFpUqVWpGc4/Uh85ntzKapw0dNqt60\nw+OjX1ny3eYtbzRc/eZT/7mwQM9Y0K8UAwAACIBLJ0+IZCUnfPzaMKM17vVbi1ssHae1LfNs\nsztDZj7buGqxlfNGzdiU8O3SCvk8VPTNszrftLRjm/7zXhlU2pQ0c/CI7JB77ihm9vrMlsgr\nzmYukTZjyrjzESUHd6yvpfz1xpv7wqs98Z8LC/SMhB0AACgELj95QmcKqnZr5y+3vl3FYhCR\nx77Zkjms/8TB957OMcfVa7lg/Rdt8600TR+y+M/Vo/o99/j9bc86w+u36bv2rQk+GvtKs0XE\nvvDdlHNPv/F0i3Hnw2+Kqd+q79q3nowIMf57YYGeTnO7C3Z9lHxUDjL+lWW/+np+lJKSYrff\nWCMVXmazOTQ0VESSkpK8+LaBwsLCwkwmk81mS03l6yBxdZqmRUVFiUhaWlpOjvcPihVZ0dHR\n3n3Ac+fOiUjQF0sMB/Ze/3fFOmLjsrrcKz6Ys2hijx0AALhG7rTUaz4BAr5A2AEAgAJzlrrK\nVU50p0/q0lLd1mBnmZjreRwUCGEHAAAKzNaoaf4rWL75TLdnp7NEydwjrfCPAl7uBAAAADcq\nwg4AAEARHIoFAADel3PHnTltO4hef/VV4T3eDLtx02d68dEAAEDh5TYYxMD+I38r0KFY16lD\nF78KNjvxtxeeHDJs9KsrD136+t6HBgzy6mwAAAAoAE9T2pby0/3NO331V0lbxi63I/muGvE/\nJGWJyFtT536w788HyoX4ckgAAABcnad77BZ16f75btsjIx8TkcQtw39Iyhry7f7kwxtuMZ4c\n1WOJLycEAACARzwNu4m/Jpa/c/E7Lw4UkR0vrTeHN5/RPjaiQrMZD1ZJ+nOqLycEAACFT4Lt\n7O7sI8dsZwI9SNHiadgdy3FEN7545egPfz0bVWdk7lkuwZWCHVl/+WY2AABQWE04+UH8nsdG\nHXsz0IMULZ6GXdMwc8LybSKSc2HlJ2czb3n2ltzlv395wmiN89V0AAAA8JinJ0+M71W12fTe\nnftuMfyyQDNETmxRypF98J0pUx7fdPqmVlN8OiIAAAA84WnY3TZp9biEOya+P9OuBfWeurF2\nsDE94cvBY+aElG3+0dK7fToiAAC40cw88+mWzH35rLAt84CI/Jl16JHDL+ezWn1rtWE3dfPy\ncEWYp2GnM0SNXfzbc5nnMvSR4WadiFiKtf/iu8a3t20crtd8OSEAALjhbMnc9+2Fn6+62jlH\niierwVsKdElo19nTyaUqRYtIduJvr0z+INkUY61au22lUB8NBwAAbmSlzNGNwmtc27a/pOw+\nlXPOu/OACxQDAIBr1Ci8xud1X7u2bbtuf/qLxPUervxNvZs6b0vM/VnTjJElK7Tq0nvi609W\nsXrtW8vGlg9f3mfdlhdujjTqu+4+Ny+2mKZpTxy68HrFcBFJPfRRu7ajtidXzjy/Kfng3qTg\n8lVKBXnrqb2ICxQDAIBCIKRk37Vr165du3b1yq+mPN3zwJIJ9Wvdc9rm8t0zDhw4sHGoKffn\nn/s/ezB08M7ty0RkUfsmd07Y5rvnvR6edu7EXxPL3/nFOy92kMsuUKyX2BkPVmkxf6pIH18O\nCQAAijq9pWJ8fPzFG63v6PFA69iyrTu9+MfvL9b30TO+9dZbeT9nnsqOqHN7pZiSPnoub+EC\nxQAAoPCxRLf44O4Ku98al3vTZTv5ypBudWPLWkKiasd3/2Dz6dzlWYmbB3VtUTIixGC2VqzV\nfOLSvXmPkHFiVZ+OLWIircVKVuv/6hfufz2FVa8bdThFRKZVLtZ197mDi+LNofUfKxM6+GDy\nnjlNgot39/2rLDBP99g1DTPvXr5Nnqyde4HiDh9wgWIAAIq6Ved/i9vc49q2Tcg5e53PXn1g\nlexFy8/ZXdFG3ej4W+amNZ81Y0H1KN1Pn7/xaIsqjj0JfWPDn2nacVlkj/e/mlwmyLHu46dG\n9mzYs3NyRYveZUtoV7vznnKdZ89ffpP71NSRvRYlpMde4Yke25lQ6pZyo2st/PPDeIPmqlS7\nzNzbl22d2fQ65/cFLlAMAACuUboja5/jWKCe3XJTpNvtPmFzWhJnvPbL2TXnP4qPMIvILY3i\n7V9GTRi8oe/KThX6Pzuv12MdiweJSFzl54ZP7/RHhq2iJej4iv4/Z4T8smlh/RCjiNzWJDSs\nxF1XeiJDkNWi03SGIKvVIiIWTdMZg6xWs79eaAFwgWIAAHCNqgbH3FOi5bVtuyxxzf6M49fz\n7DlnkzVNK2vSX9i7wu123V7Mcvm9EbZ9Ip2Gjxy05qtlk3buO3Lk0LaNy/PuPbpof3DJvrlV\nJyKWqM53FLMkXM80NwYuUAwAAK5RjeCKE6sMurZt92Qcuc6w2/v2QUuxDtFG3ZnwIJ0hIuXC\nicuLRNOZnDnH76xe69fwZv27t23eqUmfx+9vULfTxXv1msg/AqaEUVeEwu7i2tbo8Es/17jr\nDnG7MlPTJCzU6vXJAAAAriQn+ac+Sw/HjfxYRMIr9XM7v5p70v5EbISIiLhHtWl+use86Q2f\n/+5o9qnsr28y6kQkM3Fh3ubl76uWsWTe9ozxdYONImJP37rsXFalgLwSr/L0rNgrObGqa1Tx\n6l4ZBQAA4EqcOUc3bdq0adOmjetXf/LWyy3iWieVbL/8hVtExBLZcVrbMs83u3Pu4u92/PHz\nlKHNZ2xKeKRbBXNUA7fL9vqitUdPHN78/Yf3tXpaRHb/legUKdt2TsOglDYtHln2/cbNKz/v\nfXu7yGBP93bpNUk/vP/06RvxazM8fQ1uZ/obw/t9+OPvSVmOy5efPnZUC7rG7xIBAADwUPqp\nt5s1e1tENM1Q7KbyLbs+t2DKM6VMF3dRPfbNlsxh/ScOvvd0jjmuXssF679oW8wsxZ5cMenI\nsOd6vJFqqNuw9bhlu0o+VHt8s1rtz5+vH1Lmhx1fDnr02d5dWklI2ftGL5395YPPeTZJixF3\nZY7qV63RfSlH5/vs5V4jze3+93Vb/sPWF26tP2FLbOO2FWXPDz+duOPOLmbJ3rVmdYK52cxF\nH/ZtXdbXg16blJQUu90e6CkUYTabQ0NDRSQpKcnDtw2KuLCwMJPJZLPZUlNTAz0LCgFN06Ki\nokQkLS0tJycn0OOoIzo62rsPeO7cORF55PDL3174+fq/K7ZDxG0fVhwtPpizaPJ0j91zs3ZF\n1Xpp/+bRbmd6pZBizd6YPzomNCtxXa2KHdJLB/t0RAAAcGM6lXPO8+97hR94GnYbUm3Vn+gk\nIpo+5KES1tVbk0bHhAaViJ/fq8Jd3d4ZvuspXw4JAABuLPWt1fJfYVvmgZO2pGhDeMOQ/D6L\nf9XHQYF4GnbFDJo97eIxzUZlg5d8mSB3VRCR8neXvfDuNBHCDgCAImTYTd3yX2HAkcmf2dbX\nDqqUe6QV/uHpWbF9y4QefP/V4zlOEYm5s8yJb9/OXX76xzO+Gg0AAAAF4WnYDXivX9bZzypH\nlzuc7az8cN/MxAWNez81ecKITlN2RtZ82qcjAgCAQqeEsVgFU8mSxqhAD1K0eHootlT8pD+W\nlRo/92udJsGlBnwy/NMHpr/+s9sdVrndpysG+HREAABQ6LxYpu+LZfoGeooix9PLnfxb6vH9\nhzMsNaqVM97A3yjG5U68iMudoKC43AkKhMud+IiPLnfidVzuxCsK9pVilwuLqVrXi4MAAADg\n+uQXdrGxsR4+yoEDB7wxDAAAAK5dfmFXoUIFf40BAACA65Vf2K1cudJvcwAAAJUcTjImZejD\nLM6qJfiwu/8U4DN257Z88ezEN+0PvftBl/IisqpdvecNtUa8MPXehsV9Nt710uv1gR5BHXm/\nmAbDtX80E0WKpmm5/2s0GgM9CwqB3DeMiOj1et4z3hLAc91+OmLZdsJctYSNsPMnT/+GTjnw\ndtXbBqVo4X36Xbz0XeQtsUenL+r5w9dJOw4Pql7MZxNeF4vFQtt5XVhYWKBHQOGQ+/e00Wjk\nPYMCCQoKCgoKCvQUiuDSEEWNp5c7mVor+tljFVbv39C05KXfbNlnf2tVpfn+mPHndt6g1yjm\ncidexOVOUFBc7gQFwuVOfMRHlztZcyDoeHJ+O1aPXzCkZOlCzK4KkY58VospZm8Zm+WLOYsm\nT/fYTTuYUqXvG5dXnYhYijeYObDabdNniNygYQcAAHzheLJx5ynTVVdLz9F5sFqWV0aCeB52\nTrfbFP4f/8forXoRl1dHAgAAhUO4VSpf6yft/zorKZlenQaeh93QCmEvzR1zfOzXMeZLH1lz\n2U6Ne2NvaNknfTMbAAC4oVUuLkPbXOO2b6ySrUe9Og1EdB6uN3DZ89qF72vGtRo/64NV6zZu\n3rBm4dxX76hd/eskx4hFQ306IgAAwNr3J7S5NS7MarKGRVVv1P7FDzb54lmSD+49eKoQHxr2\ndI9dZK0Ru77Wdx8wetyw9XkLLZFx4z9Z+nyDG/dyJwAAQAF/Tu/c6omVvZ6b8szUW63OC9vW\nfDq6X4ufk39fPqKed59oUfsms9os3/1WY+8+rN8U4IJkFdoP++3owJ0/r/tj79FMp6FUpZq3\nx98aptd8NxwAAICIPPXiqtiHv3nvxYvHfZu0bNc0bPuto7vJiL8CO9iNxtNDsRdpplqN2z7U\nu++Avr3ubNWAqgMAoChzuSXHcY3/uQpy4awUhzvr9JHLl9QYNPeLpTNzz9/MStw48K5WFYoH\nl65a7/6R0z9uXrr++G0iIu4cTdNePp6Wt1Vps+HRA8kikpW4eVDXFiUjQgxma8VazScu3Ssi\nj5UJHXwwec+cJsHFu1/vL02A8BUCAADgGm07JoM+9McTTR15e+Nx/co1XPZA106tW7Vs2qBG\nUHC9jh3riYjLcb5r7Xa/3dThzfe/KaWdfeOZQQ/uSq53tVM6nmnacVlkj/e/mlwmyLHu46dG\n9mzYs3PylINnKtUuM/f2ZVtnNvXHq/KBAu6x+5dnHhsyaNAgr4wCAADwn257YcWfKz/pUa/Y\nD++/3Pa2muFhN7W577FVR9NF5NS6AauSrT9s/vi+Ti3jO9770cZlFg/qpkL/Z+d9M61ji0Y3\nN2g64PnnXM60PzJspiCrRdN0xiCr1ezzl+Qb17vHbv7bc0/ZnG+99ZZXpgEAAIVIpeLSvs41\nbvvdDjl0tgDr12pz3+Q294lI2sn9K7/9ctbEFztU/2HruV0XPtoRXLJv/ZCLX4NhDr+9c2TQ\nwas92vCRg9Z8tWzSzn1HjhzatnH5tb2EG5CnYbdhx7Hmdcr9e/n0ee9lOfl2KQAAiqIIq9Sv\ncI3b/nTV+Ppb1rml9/f7+JWPl8YFGUQktHTVu/s+2bF7I0tE/PN/Jg3Pcor840P/Ru2K5wBk\nu9wi4sw5fmf1Wr+GN+vfvW3zTk36PH5/g7qdrvFl3GA8DbsWdcuHxdRq375Dx44d7vi/ZsUt\nFy9TfO+DD/tsNgAAADFYqiz/8kvr9ycWdqmQt9CRcUZEKkWaY+6ukPH5vO0Z4+sGG0XElrr5\ny6Ssqpdtft5+8SuyMhOXJjtcIpK894nvjmafyv76JqNORDITF/rttfiap5+xe3boIzXC0j59\nZ/LDd91eMjTqtnb3Tpjx4e8HCrILFQAAoOCMIfU+ffy2Rd3r9Xt+2tffr96wfs3S96d1rt8r\nqu7AV6pElOv8Vg1jcpsWjyz7fuPmlZ/3ir9Tl7fDTjPfFmZe1G/iln1H//zpuz6tB+o0TUTM\nUQ3cLtvri9YePXF48/cf3tfqaRHZ/VeiU0SvSfrh/adPnwvcy70unobdxFkf/LTzSFriXyuW\nvvfUgLu0hF/Gj+jdoGqJm6o26D18nC8nBAAARd2d0zZ++9awI9/PffieDi3bdhzxyvzyD770\nxy9vmDQxBMVu2LK4Zcifj9zVsv0DT1q6vTOsdEjehl/9MCsucUnzmpXqNOlwosGEHsWDRCS0\n7JMrJg3+6rkecTWbjHx95eBlu/o1iBnfrNa2dHuLEXdlbuhXrdHIwL3W66K53dfyCTlndtL6\nz95/8cWJa/Ymi8i1PYgfpKSk2O32QE+hCLPZHBoaKiJJSUk37P/juKGEhYWZTCabzZaamhro\nWVAIaJoWFRUlImlpaTk5OYEeRx3R0dHefcBz586JyPxfw3aeMoVbpfK1fv/UX2clJVNqlbI9\n3DBVvDrn2PLhy/us2/LCzXlL3K6sM+fdJaOt3nqKG1YBzop1Zp39dcOGdevWrl27buMvOzOc\nLr0xokGru1q2bOm7+QAAwA0rJVO2Hg30EB7QdEElvdy3NyhPw+7/Gtfe9NvuTKdLpw+p06RF\n/9EPtWzZqkWzm8MN13slPAAAUOjEFLvKAbHjFwwpWboQs6tCpON6HucaXPmkWPV5GnYrf94p\nIsVrtxs9emTX/4svV6ywXrgPAABcv5axWSJZ+azw8ZbQbSfMpcMduUda/Wnsnr/uT1L/qOt/\n8nR/2+J504c+cnepjK3D72tXISq4Yu0mjwx9Zt6S7w6cTvfpfAAAAAWiD4quVraIhp2ne+zu\n7fP4vX0eF5HUhL3rN2zYsH79+nWLFs6e5HS7S8XecnL/Fl8OCQAACpnykQ6XS0qH53ccFl5X\n4K8UCysT1+GeUiVLFI8sVsxk/2j9vuRTB7b6YjIAAFB4Na2Y1bRioIcoejwNO7cra9fP61ev\nXr169eq1G/9IsTt1+uCbW7Qd/Wj79u3b+3REAAAAeMLTsCsZGpaY6RCR0LI12/ca0b59+zva\ntShpLfAOPwAAAPiIp2VWtmHHfu3bt+/QoWmtGJ8OBAAAbmRev+IxvMjTsNuy5gufzgEAAIDr\nxOWFAQAAFEHYAQAAKIKwAwAAUARhBwAAoAjCDgAAQBGEHQAAgCIIOwAAAEUQdgAAAIog7AAA\nABRB2AEAACiCsAMAAFAEYQcAAKAIwg4AAEARhB0AAIAiCDsAAABFEHYAAACKIOwAAAAUQdgB\nAAAogrADAABQBGEHAACgCMIOAABAEYQdAACAIgg7AAAARRB2AAAAiiDsAAAAFEHYAQAAKIKw\nAwAAUARhBwAAoAjCDgAAQBGEHQAAgCIIOwAAAEUQdgAAAIog7AAAABRB2AEAACiCsAMAAFAE\nYQcAAKAIwg4AAEARhB0AAIAiCDsAAABFEHYAAACKIOwAAAAUQdgBAAAogrADAABQBGEHAACg\nCMIOAABAEYQdAACAIgg7AAAARRB2AAAAiiDsAAAAFEHYAQAAKIKwAwAAUARhBwAAoAjCDgAA\nQBGEHQAAgCIIOwAAAEUQdgAAAIog7AAAABRB2AEAACiCsAMAAFAEYQcAAKAIwg4AAEARhB0A\nAIAiCDsAAABFEHYAAACKMPjnadyO5M/fmfvd5u1J2bpSMbF3PjSwXb2SIuK0nV40551N2/ed\nSXNXrtus3+N9Y0OMuZuc+Wl0v1f+vPxB+ry/pEuURcS1dtHsr9dvPZ6mj6vVsNdjvStZ/fQq\nAAAAbmR+SqIfJo5auDusV/9hcaWDd/z4yexxQ7Le+LBLjPXtJ55Yl1N10KCnSxqzvv/4zTHD\nUxe887RJExG5sO1CUFTnx/vVzHuQ8qFGETm0bMy0xUcfHDK0TzHH8rlvjh5hWzh3CDseAQAA\n/BF2zpzjc7aci5/4eueaxUQkNq72qV97fDF7Z9th+747mjbyg6fjIy0iUqV62a09B8/ed2F4\nXISIJO5OjajRpEmTmv94LLdt6uI9lXu+3r1NZRGpMknr/vCkhQm9HioT7IcXAgAAcCPzx64u\nZ/aR8hUrdqgU9vcCrV642X4hPf3wfk0XdHukJXep3lS6SZh5zzcJuTe3peYUqxfhzEo9nXjB\n/feWOSnrj2U727Ytk3vTHNGsXohpy9rTfngVAAAANzh/7LEzhTefPr153k17+t73TqaX713N\nUnKn2/Xn72m2W0NNIuJ2pvyRZks/fD53tT/S7e6NM++dtdfudhuCi7e7//EBnevYMnaISA2r\nMe/RqlsNK3akyAMXb+7fv//TTz/Nu7d79+4xMTG+f4lFgl6vz/0hOJj9o/BI7ntGr9eHhIQE\nehYUJhaLxWg0Xn09eMDpdAZ6BPiVv087OPr7tzNnvGev1H70HWWt0rdO2MZpz896rHfHSF36\n2mVzkhwuoytHRJy2hHS9sUJ0k9cWTohwp/3y7XuT3xljjp3f1ZQhIlGGSzsao416R3p23s2E\nhITPPvss72abNm1iY2P9+PqKBIvFEugRUJjo9fq8fxUAnjAajYSdt9jt9kCPAL/yX9jZkve9\nN2vmd3+cj+826OX7W1k0TSTk+Vnj3p61YO6kMRnu8Nvu6ntfwszPLWEiojeVWbJkyd+bmpv3\neGr/ii2r3915z/AgEUl2uEL+/nsiye7UR5jyniUyMrJhw4Z5N61WK+9pb9HpdLl/PfNLCg/p\n9XqdTudyudhnAA/l9pzT6XS5XIGeRREOh4NKLlL8FHZpR398YtQb+trtJ73zcLXoS/t7zMVq\nPTb2tbybE76aEhUf9Z+PUO+moFXnzxqDa4us35fliDFfDLsDWY7wZhF5q9WtW3f27Nl5N1NS\nUlJSUrz8Yooqs9kcGhoqIqmpqW63+6rrA2FhYSaTyeFwpKamBnoWFAKapkVFRYlIZmZmTk5O\noMdRR1BQUKBHgP/44+QJtyvz5adnm1sPmz22/+VV57KdHjdu3I/JFw+kZp37/vc0W+s7yojI\nhf1vPtp3yGlb3r/YXOtOZkbUqGqJaFnapP9+Y2LuUnvGtl/TbLe0KemHVwEAAHCD88ceu8zE\nhbsz7b1rW7f8/vulJw6qcnPNkhUuHHx39KzQIV0s6SeWzH63+K2Pdo62iEhYpR5RmQOfHjd3\n6P2tIrSsLSs/Wp8ROrZvVdGMo7rFPfnBuFWlnqpZzP7Vm1OspVo/XJbPZQMAAIjmh2NqpzeO\n7j/pz/9ZGBbz3Edv3ubMPvT+tDnrt/9lMxar17zzoEfvDNNruSvkJO96f87CTdsPZOtDK8XW\n6tKnf+NyISIibufK+dMXr/w1KVurXDd+4Mh+VYKvmKcpKSl8IMxb8g7FJiUlcSgWnsg9FGuz\n2TgUC0/kHYpNS0vjUKwXRUdHB3oE+I8/wi6ACDsvIuxQUIQdCoSw8xHCrkjhu7gAAAAUQdgB\nAAAogrADAABQBGEHAACgCMIOAABAEYQdAACAIgg7AAAARRB2AAAAiiDsAAAAFEHYAQAAKIKw\nAwAAUARhBwAAoAjCDgAAQBGEHQAAgCIIOwAAAEUQdgAAAIog7AAAABRB2AEAACiCsAMAAFAE\nYQcAAKAIwg4AAEARhB0AAIAiCDsAAABFEHYAAACKIOwAAAAUQdgBAAAogrADAABQBGEHAACg\nCMIOAABAEYQdAACAIgg7AAAARRB2AAAAiiDsAAAAFEHYAQAAKIKwAwAAUARhBwAAoAjCDgAA\nQBGEHQAAgCIIOwAAAEUQdgAAAIog7AAAABRB2AEAACiCsAMAAFAEYQcAAKAIwg4AAEARhB0A\nAIAiCDsAAABFEHYAAACKIOwAAAAUQdgBAAAogrADAABQBGEHAACgCMIOAABAEYQdAACAIgg7\nAAAARRB2AAAAiiDsAAAAFEHYAQAAKIKwAwAAUARhBwAAoAjCDgAAQBGEHQAAgCIIOwAAAEUQ\ndgAAAIog7AAAABRB2AEAACiCsAMAAFAEYQcAAKAIwg4AAEARhB0AAIAiCDsAAABFEHYAAACK\nIOwAAAAUQdgBAAAogrADAABQBGEHAACgCMIOAABAEYQdAACAIgg7AAAARRB2AAAAiiDsAAAA\nFEHYAQAAKIKwAwAAUARhBwAAoAjCDgAAQBGEHQAAgCIIOwAAAEUQdgAAAIog7AAAABShud3u\nQM/gQzabTacjXr1D0zS9Xi8iDocj0LOgcNDr9Zqmud1up9MZ6FlQOBgMBhFxOp1q/93kTw6H\nw2KxBHoK+I8h0AP4lsPhcLlcgZ5CEQaDITfssrOzAz0LCgeLxWIwGJxOJ+8ZeCgkJERE7HY7\n/4D0FpfLRdgVKYqHnd1ut9vtgZ5CEWazOfdPh5ycHP4xDU+YTCYRcblchB08oWlaXtjl5OQE\nehygUOIwJQAAgCIIOwAAAEUQdgAAAIog7AAAABRB2AEAACiCsAMAAFAEYQcAAKAIwg4AAEAR\nhB0AAIAiCDsAAABFEHYAAACKIOwAAAAUQdgBAAAogrADAABQBGEHAACgCMIOAABAEYQdAACA\nIgg7AAAARRB2AAAA/9/efcZHUa59HL9mN7ubbHohBEhEQhAQSEAgggpIUYyFJh0hUgWkV5EA\nUQwIIsWESJGiASkemmB7bIDKkSMiRQ1YQFAEgYQ0UjbZ3edFQsjBJKAn7Jqb3/eFn5l7Zmeu\nYe+s/525Z1YRBDsAAABFEOwAAAAUQbADAABQBMEOAABAEQQ7AAAARRDsAAAAFEGwAwAAUATB\nDgAAQBEEOwAAAEUQ7AAAABRBsAMAAFAEwQ4AAEARBDsAAABFEOwAkF4PvgAAGMdJREFUAAAU\nQbADAABQBMEOAABAEQQ7AAAARRDsAAAAFEGwAwAAUATBDgAAQBEEOwAAAEUQ7AAAABRBsAMA\nAFAEwQ4AAEARBDsAAABFEOwAAAAUQbADAABQBMEOAABAEQQ7AAAARRDsAAAAFEGwAwAAUATB\nDgAAQBEEOwAAAEUQ7AAAABRBsAMAAFAEwQ4AAEARBDsAAABFEOwAAAAUQbADAABQBMEOAABA\nEQQ7AAAARRDsAAAAFEGwAwAAUATBDgAAQBEEOwAAAEUQ7AAAABRBsAMAAFAEwQ4AAEARBDsA\nAABFEOwAAAAUQbADAABQBMEOAABAEQQ7AAAARRDsAAAAFEGwAwAAUATBDgAAQBEEOwAAAEUQ\n7AAAABRBsAMAAFAEwQ4AAEARBDsAAABFEOwAAAAUQbADAABQBMEOAABAEQQ7AAAARRDsAAAA\nFEGwAwAAUATBDgAAQBEEOwAAAEUQ7AAAABTh4pjd2AsubVu5/L19h1NyddVC6nTqP7xjkyAR\nsVrObVy28ovDx//ItNeOuG/o2CF1PAxXXmTbvTFx596Dv2bq6zWMfHL0wFCzS7ntAAAAtzQH\nnbH7vzmT1u/5o9PAMfNmT21XOy8x9untv2aJ2FZMnLjzW1uvEVPnTB8bnPFlzLiFFnvRS05s\niVm06d8tug2dNW6Ax88fTx+/3FZuOwAAwC3OEee6rHm/Lvv6Yps5Cx5r4Csideo1OvufXtsT\nv31gzPH3TmVOWDu1jZ+riITVDz7YZ2Ti8bRx9XzEblm4Kbl2nwU9OtQWkbD5Wo8B89efebJ/\ndUPp7TXcHXAgAAAA/2QOCXa5v9SsVevhUK8rDVoTb9O/07KyTv6g6dzu93MtbNUbq9/jZfp6\n1xmp55OXvvd0rnXEAzUKF5l87mvisfjr3ed6PnKy1Pb+/WoXtuTk5KSmphbv2mQy6fV6Bxzj\nrUCn010zAZRP07TC//JniBtR2GFERKfT0Wcqit1uv/5KUIgjgp3Ru9Xixa2KZ/Ozjq3+Pavm\nwLquQd/abUcPZFqaeRpFxG5N/ybTknUyVUQsl4+IyJ3m4vF2Ut/s8v6RdMv9pbdLv6LZL7/8\ncvLkycVLExMTIyMjb+rR3YJ8fX2dXQIqE4PBQJ/BX+Lu7u7uznWYipGfn+/sEuBQjr7t4NSB\nd19Zsjo/NGr6Q8FmGRLu9fmiGfGjBz7ip8vavWVZSoHNYMsTEVveZRHxd7l6ZijAoC/Iyi2r\n3cFHAQAA8A/kuGBnuXR8dfwr732T2qb7iLi+7Vw1TcRjRnzsivik5fNjLtu9W3Qe0vvMK9tc\nvUREZ3QTkUsFNo8rZ+NT8q16H2NZ7cV7iYiISExMLJ4NCQlJT0932DGqzWAwmM1mEeGfFDfI\nbDYbDIb8/Pzs7Gxn14JKQNM0Ly8vEcnOzuY8U0Wx2+0+Pj7OrgKO46Bgl3nq44mTEvSNouav\nHFA3wLW43eTbcPTMecWzz7/9sn8bfxExuDcS2Xs8pyDEVBTgfswp8L7Pp6z24i34+fmVvPaa\nnp7Op0NFKR5aV1BQwKAN3IjCfmK32/kzxI0oHmNntVrpM8Df44hR8HZbdtzURFP7MYkzh5VM\ndTbLudjY2I8vFV1Izbn4wYFMS/uHaoiIq0/b6kb9B5+fL1yUf/nQfzItd3UIKqvdAUcBAADw\nD+eIM3bZ59d/n50/sJH56wMHru7YLaxxg6Db0356bXq859NdXLN+25z4WpVmgx8rTH6acVL3\nepPXxn5UbUoD3/y3l75srtZ+QLCHiJTVDgAAcIvTHHBN7dzn04fNP3pNo1fIs+uWtrDmnliz\naNnewz9bDL5NWj02YnAnL33RqXixWz98Y/GmD/+TkqvVjmgzfMLQMHeX8tpLw6XYCmQymTw9\nPUUkJSWFS7G4EV5eXkaj0WKxZGRkOLsWVAKapvn7+4tIZmZmXl6es8tRR0BAgLNLgOM4Itg5\nEcGuAhHs8FcR7PCXEOxuEoLdLYUnzQIAACiCYAcAAKAIgh0AAIAiCHYAAACKINgBAAAogmAH\nAACgCIIdAACAIgh2AAAAiiDYAQAAKIJgBwAAoAiCHQAAgCIIdgAAAIog2AEAACiCYAcAAKAI\ngh0AAIAiCHYAAACKINgBAAAogmAHAACgCIIdAACAIgh2AAAAiiDYAQAAKMLF2QUAAP6mz0+4\nffaTq7OrqDCapul0IiI2m7vdbnZ2ORWmVVjufaE5zq4CtwqCHQBUVhk5uks5emdXcTModTXp\nQqaS7xH+oZT64wGAW0q2RXN2Cbi+cwQ7OBDBDgAAQBFcigWAyqqql9XXzebsKiqSTqcTEbvd\nZrc7u5SK06Caxdkl4BZCsAOAyqpV7ZxWtdUZla9pmr+/v4hkZl7Oy8tzdjlApcSlWAAAAEUQ\n7AAAABRBsAMAAFAEwQ4AAEARBDsAAABFEOwAAAAUQbADAABQBMEOAABAEQQ7AAAARRDsAAAA\nFEGwAwAAUATBDgAAQBEEOwAAAEUQ7AAAABRBsAMAAFAEwQ4AAEARBDsAAABFEOwAAAAUQbAD\nAABQBMEOAABAEQQ7AAAARRDsAAAAFEGwAwAAUATBDgAAQBEEOwAAAEUQ7AAAABRBsAMAAFAE\nwQ4AAEARBDsAAABFEOwAAAAUQbADAABQBMEOAABAEQQ73KhPPvmkbdu2bdu2tVgszq4FlUNM\nTEzbtm1nzJjh7EJQOVgslsIPmd27dzu7FqCycnF2ATeXt7e3s0tQh5ubW2Zmpoj4+/sbjUZn\nl4NKwGazZWZm2u32gIAAZ9eCSiAvL6/wQ8bNzY0+A/w9nLEDAABQBMEOAABAEYpfikUFCgoK\n6tChg4jodHwfwA0JDw93cXFp0KCBswtB5aDT6Qo/ZKpWrersWoDKSrPb7c6uAQAAABWAUy8A\nAACKINgBAAAogjF2lU9CdM//u5RbOK1pmptnlSbtuoyIfsRLr1XgXqK7dQmPT5pYw7P81Q5O\nHxh7NKV41ujqWbN+s34jht8V5FaBxcDxvhrXf/aJ9MJpTdN7+FQNb9FhwKCu1Uz6Ctn++sG9\nD3SYs6hPqIj07dq5xdL1Y6p7dOrUqcvKjYOqmkUk+9zuWTNXn8wK+teb87PO/pbpGljNl4fs\nVD5HP9q4+d09P5w+Z9WbA0PqtInq1at9/QrfCz0EKEawq5R87xwy+YlQEbHbrBdOfrNy7crJ\nKf7LJ7d0SjEm71azpkaJiIgt7fyJXWvWx437fe36+Z4VGjTheK6+D86cfL+I2K2WC6ePvb1x\n4/iDx159dbqvy816Z6Oiouq5FX0oHV/6xlm3hxPmdBSRz2Kn7Go8c+mIejdpv7hJTr09O2bV\nofY9B3UfXMdkyzpxZF9SwjPHsxbN7BxasTuihwDFCHaVktGrVsOGDYtmwiOqnNw/a98GkRsK\ndlabXa+ryP8x6wxVrhYj4RFh6f1GbXnrQs6gIPPVneZd1pvcK3CncACdoerVdzbirvvaRAwf\nGDN7088L+4XdpD2OGDGieDov1eJ+e6OgAN+btC84wJpNh6u3mzmmX0ThbL1Gd9U3n5yQ9KJ0\nXuHcwgCFEexUoNOJ3li9cNpekLrltRV7vzl+5pKleu3wLtHD2tfzFZHobl0eXfJC8tx5X5/J\n8PCt2iJq4OheRUHQmns6KWH1l98eu5hrqNe07dDR0TVd9SJiK7j0+tzZ7x38UWcOaPHQoDF9\nbig4GjwDRSS1wCoifbt27rti1fnViz791i0pKaas2s4ffG/Zul3Hfj2rufvXj+w4YfjjZp1W\nTjucwujVYGzLwNnvbpB+M6TsnmZJP7Zq6ev/PvJzhsUWUD2sY59RPe4NFpHci4dXJG48dOzH\nHJcq93WK9iltF907d354xYZBVc07hvVZde6y/Dqt21e1O5rPvJOaK2en9Pji3rfWTXXoMeN/\nk2215136o2TLbVFPTw9JtYtoIpb071+LX3/w2A/5HjUaNW/X/Mct2yNmLeod0qnz40+s3tQz\noGg4R3S3Lk0T1o2p7iFl9K7lT/akhwDFCHaVkiXzVHKyi4iIzXrhl2+W77n4wPjYwkVJ08a9\nn9Ng2NAJIV7asX+/88ozT1kT1z5Y3Swiu56d167/6IHhNX7bv3nuqrlV2m7sHWgWe0H82Clf\nuTUbNXaWrz5t57JXnp0o65cOEpGvZ8+I6vX0goE1ft2/ee6qudUe2NQjoPyRc/aMCye3Lt6k\n6c1dAopO130R/1xE6+i50bXLqq2dz8nRzy9r0GPkrJF18i4cW7RgxXPBkfM63VaQ/V2p7Tft\nHxXXFxJVLf+zAxlWu5deK6unvT7luX2ercbOGOhntH63Z81rL01s3XxDoO7SrNGzf6vSfPj4\nWT721B2rFu9Nyale9o4eTVjrN25QUs2J8eMa6jV70Kgn3280bfGwih+bhZtqcOdGkzckDJq4\n7/6WzSPCw+vXCTG6hjZrFioidmvmnFGzfvRpNnzsTF8t/Z3XX114Ois04jobLLV3DV6RRA8B\nihHsKqVL362YWuJ7qblay4jb3EUkN2XHlh/S496c0NDdICK172ho3d9v46vfPTi7uYi4t5gU\n/WCEiIR0Hl9r/WfHLuRKoDnztzWfniuYs2FcA7OLiNz+Qsbsl/deKrCLiG/EhOgHIkQkuPP4\nGuv2JqfmSWnBLufi1k6dthbP6l2Dek+MC3MtGmKfXnVo7w7h5dR23+hjOTb7Qw/fX9fXJGGh\ns6f5/m7yFBFL1sFS2+FEBh9Pu91+Md9mTNtVVk8L7NhjdPtHm3kbRSQ4qOfKt58/kVegJS89\nnuu6YP6kwo5Rt75bryfiytmR3mgyaJqmM5lMRhExaprOxWgyGRxylKgwdfvExt/52Sef7//m\no83/emO53tW7YfP7ukdHRwS6pn6beCjLtGDllS5xp/dXfWOuu8FSe1dVTxM9BChGsKuUqraI\nW/lso8LpvMyUTzfGzR0/et66lf6/HbTb7c/2ebzkyu4FZ0Sai0jQAzWLG730OrGLiKTsTzZ4\nNClMdSLi6tcxLq5j4XSNh/57/TKUuHlCXFw9a9wW4mm8unK19iGFE1ll1Obm3/n+Oh/NGTyk\nYdMmd9av37hpi8iaviJSVjucqCA9S9O0AIOurHdTpHmnLlFH9+/bevrMH3+cO5n8VeGiC3vP\nuPo+WBz3jZ6RTT0MKdduHgqqGdFqYEQrEclJPXPowP5db22KHXlo8fqEy7t/KdklDOZGkZ7G\ns9fbWqm9C0BJBLtKz+Tp33HQjGW7nnzzeNp4D6Omd9+0YU3JFTRd0bdYg1spD6qw5ds1XenP\nCHAz39CDLf775olrmT2L+piLe+m1aXr9hJfX9kj++tDR778/8unWN5Y37BobG91Y03uV2n4j\nJeEm+e2DswaPpl56La2Md9OWf/GFkaN+cL+z472NGzSv90CnNhPGPC8i8qfBkd4uOoKd2iwZ\nXyxI2DNg0tRgo15E3PxqtHywW7P76j7ee9r6U5mdLNZr1neR0kfQ5l/5eaQyexeAEnhAsQps\n+Sk2u91o1JurdhRb9vupVtcipjfjZi399Fw5r/Vvfrsl88BPuUUfsnlpn0ZHRx/Myq/wIsuq\nLS15+8rVW0LqN3us54CpsfMXPXXHkXfWikhZ7XCW/KxjS774I/ihvlL2u5n126qvz1sSXp7R\nv0en1i2bhvhmFb42sHWN3LQPT17pZtbcn/dl5DntSOAQemO1r/bv33TwvwK8NTdNRII8DAEt\nq5bsEgXZx77MvNolsgqKwlxe+hdZ1qLpsnoXgJI4Y1cpXb15QsSSlbJnywq9KXhQmJfR2GxI\nY//Xp77gOqx7vRoehz5cvTM5ZdbUwHI25RX6VKTPF8/FJIyJjvJzydz56msW13vu8qj4oSpG\nz9JrM2Tk7Ny+Icvd9+HmYdrls7vePeMe3EVEDN6lt8NhbPnnk5OTRcRuy794+tjbb27O9Gn6\nUp/aUs67mVvHbv9i296jjzSqmnr6u3+tThKR02fTIhuPvMM4bMa0RSP7P+ynS3/3jaWef+VB\nxzpNcv74/dKl6r6+XjfpYFHh9K6h0x6rGzdvrKl778j6tdxNWtrZE+8mrfOsFTWgmrsWMCLE\n5eniLrFrbULRWV3NUNds2JuwufWIhw2Zv25emqhpRWfyDJ6l9667PQPpIUAxgl2lVPLmCc3F\nGBwWGbN4VDWjXkQenbkob0XCW8vmXco3BIeGT5g7vXG5KU3TuU6Jf2F1QtLKBTPTbeawiAfn\njOx3k8ouvTaPPrGDMta+s/aZDVnuPgFh4Q/MGdlNRNyrl94Oh8m99MHUqR9I0S9PVGnUssf4\nQd2Ln05cxrvZLfbJ8yuT5r+Trb+9TkTfaUt9F47aOHVU0w0bno+fnvjKG0vmTBfXgNY9pw7f\nvzDphitp0PnuvNXxIya13rhq/M05VtwUkUPmzbptw7YP3l+043xOgeYbGNz4/ifGP/GYiyZi\nrD5v0ZT4hDcXx03Xmavc89ioxzKXHBARkZjnh70U/9YzT2+z2Oz1OzzVKm1t4dbcAsrsXfQQ\noJhmvzJ8AQAAZyn5K3MiYrdb0jLtvl4m51YFVDqcsQMA/ONompHLqsDfwM0TAADn0/hZGaAi\ncCkWAOB8NkvG2QxTjQCuvQL/E4IdAACAIrgUCwAAoAiCHQAAgCIIdgAAAIog2AEAACiCYAfc\nug4911TTtJhTGaUunVnT27Pa0OLZTTF9Qqp4BIQNuu5mP4qqqZVra0pOhR0DAKAEHlAMoHQ6\nFxe9rei73+VzK3vHbby9y6QF3R8qbDm/P2bwC4enrd9yj5fxmhfW7P7UpIaXCqdt+ecXLnnD\nHNh15IDaxSvUcav4HyMGAAiPOwFuZYeea9ok9uD0X9JfqHmdZ/xfPNqlSviOuNMZz4Z4Frb8\nsqN9rS6fbLmY3c3frZwX5l/+xuhxV2DjnX9882iF1Q0AKAOXYgFcn91mExGTznE/DmC3Wqx8\n6wSAv4hgB6B0c2r5FI6x296gSmDjnSIyKdjTvUqPwkW1unwiIo8HmL1CpvylzSYn3qtpWvyZ\nrBJttva+bh7VBomIWa+7Z9nhhLGPBribDXpjlZAGA6YsvZhvK14169Tecb073lbFx+TuV69J\nu+eWv2v70y4A4JZFsANwHfes2LwpsYWIDF23bcfm6SLS5/Wtr89sLCIxm9/etm7IX9paaN/Z\nOk1bPv+74paMX+Z9kpbbZFZRQExOiBoT/0GzztHTnx19T62spJdGNWo3zSoiIpd/3964fofE\nnT+07zV05uRh4d6nYoc/0jR6bYUcJgAogJsnAFxH4L1t23pUEZG693foUMNDRGq1bqdd8hOR\nJu06tC93jN2fmXzajanhsXzd87LkncKWL59ZpelMi58oursi7buzY95KXtK9noiIfd6akU0G\nLZs/ZM/YNW2qL3hwyGktbM/pgy39XUVE5MXtE5t0XTgwblbX6aHeFXS4AFCJccYOgKMNmx6e\nk/ruqnOXRcRuuzxu52n/hnObehTdKutetX9RqhMRzaX/om1mve6DafsKsr+b/X1qvRGvX0l1\nIiIPz1wiIpte/cHRxwAA/0gEOwCOFtpntk7T4pccE5GLh6ckZ+c/uLhX8VKfun1LruziGvaI\nn2vmqU9zU9+z2u1HX44s+Ug8k08bEUk/mu7gQwCAfyYuxQJwNJN323HBHstWvShz3/po/A4X\n022vtAq6uli79t5bgyZ2W57ojCLSaMrql9pV/9MGG9/kkgGgciDYAXCCoTERC5/617ozP03Y\ndy44apu/y9WrB2nHN4l0LJ615p3amZLrHt7G1a+lXhtXkFa3Y8d7ipcW5Bzb8vbhoAizQ6sH\ngH8qLsUC+Pv+9gPOQ3vF6TXtmaceu5BvHfhyq5KLLp9bM3nHT1fmbBundMm02u5/oY2La1js\nnX4/JkV/fC67eOUNT3fu06fPaT7JAEBEOGMH4NN5z03zvvZnwWbFzS3/VQZPg4isiH8tr35k\n3953n/286x1RH9V89J1vN7S+kZ0avVuPD/Fc8M4xV592MWE+JRe512i65PEGyX0GRYZ5H969\neevuk4GRY5OibhORce8mrryjX1Tthl17d2pax+/bTzYlffhDoyeT+gdyxg4ARAh2APa9unDf\nnxqfeWFO+a8KvHveo3cd/yhuwtEGM/r2vttuzc3KysrOtd74fofEhC8Y9nndEfOuOd0W2Pyl\n/xv8VfSUV+ZuPG8ODO07YdHLL44xaiIiHrf1PHLEe+rUuTu2rtpuMYbeceesle/FDH7oxncK\nAGrjt2IBOMeBZxtHvnhk24XsziUeX2LW64I6fXxiW1snFgYAlRcjUwA4gS3/4tMJyZ4h40um\nOgDA/4hLsQAcbeToidk/bv1PpmXw1gnOrgUAlEKwA+BoezatOFng3X/GW691qHHNoq7du/s0\nq+KUqgBAAYyxAwAAUARj7AAAABRBsAMAAFAEwQ4AAEARBDsAAABFEOwAAAAUQbADAABQBMEO\nAABAEQQ7AAAARRDsAAAAFPH/4nTKQYcFUEAAAAAASUVORK5CYII="
     },
     "metadata": {
      "image/png": {
       "height": 420,
       "width": 420
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "# Overall,how do lift types vary by different weight classes?\n",
    "\n",
    "# establish weight class count\n",
    "lift_weight_class <- combined_df %>%\n",
    "group_by (Lift.Type)%>%\n",
    "summarise(w.class_count=n(),.groups='drop')%>%\n",
    "arrange(desc(w.class_count))\n",
    "\n",
    "# print results\n",
    "print(lift_weight_class)\n",
    "\n",
    "ggplot(data=lift_weight_class, mapping=aes(x=Lift.Type, y=w.class_count, color=Lift.Type))+\n",
    "geom_boxplot()"
   ]
  }
 ],
 "metadata": {
  "kaggle": {
   "accelerator": "none",
   "dataSources": [
    {
     "datasetId": 5583406,
     "sourceId": 9231203,
     "sourceType": "datasetVersion"
    }
   ],
   "dockerImageVersionId": 30749,
   "isGpuEnabled": false,
   "isInternetEnabled": true,
   "language": "r",
   "sourceType": "notebook"
  },
  "kernelspec": {
   "display_name": "R",
   "language": "R",
   "name": "ir"
  },
  "language_info": {
   "codemirror_mode": "r",
   "file_extension": ".r",
   "mimetype": "text/x-r-source",
   "name": "R",
   "pygments_lexer": "r",
   "version": "4.4.0"
  },
  "papermill": {
   "default_parameters": {},
   "duration": 8.506866,
   "end_time": "2024-08-26T09:40:29.133182",
   "environment_variables": {},
   "exception": null,
   "input_path": "__notebook__.ipynb",
   "output_path": "__notebook__.ipynb",
   "parameters": {},
   "start_time": "2024-08-26T09:40:20.626316",
   "version": "2.6.0"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 5
}
